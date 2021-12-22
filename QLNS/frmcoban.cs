using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Media;
using System.Data.SqlClient;


namespace QLNS
{
    public partial class frmcoban : Form
    {
        Clsdatabase cls = new Clsdatabase();
		public static SqlConnection Con;

		public frmcoban()
        {
            InitializeComponent();
        }

        private void button6_Click(object sender, EventArgs e)
        {
            foreach (Control ctr in this.groupBox1.Controls)
            {
                if ((ctr is TextBox) || (ctr is DateTimePicker)||(ctr is ComboBox))
                {
                    ctr.Text = "";
                }
            }
        }

        private void button6_MouseHover(object sender, EventArgs e)
        {
            SoundPlayer p = new SoundPlayer("amthanh.wav");
            p.Play();
        }

        private void button1_MouseHover(object sender, EventArgs e)
        {
            SoundPlayer p = new SoundPlayer("amthanh.wav");
            p.Play();
        }

        private void button2_MouseHover(object sender, EventArgs e)
        {
            SoundPlayer p = new SoundPlayer("amthanh.wav");
            p.Play();
        }

        private void button3_MouseHover(object sender, EventArgs e)
        {
            SoundPlayer p = new SoundPlayer("amthanh.wav");
            p.Play();
        }

        private void button4_MouseHover(object sender, EventArgs e)
        {
            SoundPlayer p = new SoundPlayer("amthanh.wav");
            p.Play();
        }

        private void button5_MouseHover(object sender, EventArgs e)
        {
            SoundPlayer p = new SoundPlayer("amthanh.wav");
            p.Play();
        }

        private void frmcoban_Load(object sender, EventArgs e)
        {
            dateNgaySinh.CustomFormat = " MM / dd / yyyy ";
            dateNgayCap.CustomFormat = " MM / dd / yyyy ";
            dateNgayKy.CustomFormat = " MM / dd / yyyy ";
            dateNgayHetHan.CustomFormat = " MM / dd / yyyy ";
            cls.loadcombobox(comBoPhan, "select * from TblBoPhan", 0);
            cls.loadcombobox(comMaPhong, "select * from TblPhongBan",1);
            cls.loaddatagridview(dataGrid_CoBan, "select * from TblTTNVCoBan");
        }

        private void textBox3_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!Char.IsDigit(e.KeyChar) && !Char.IsControl(e.KeyChar))
                e.Handled = true;
        }

        private void textBox9_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!Char.IsDigit(e.KeyChar) && !Char.IsControl(e.KeyChar))
                e.Handled = true;
        }

        private void button5_Click(object sender, EventArgs e)
        {
			DialogResult thongbao;
			thongbao = MessageBox.Show("Bạn Muốn Thoát Không!", "Thông Báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
			if (thongbao == DialogResult.Yes) this.Close();
		}

        private void button1_Click(object sender, EventArgs e)
        {
			 try
			 {

			    string insert = "insert into TblTTNVCoBan values(N'" + comBoPhan.Text + "',N'" + comMaPhong.Text + "',N'" + txtManv.Text + "',N'" + txtHoTen.Text + "',N'" + txtBiDanh.Text + "',N'" + dateNgaySinh.Text + "',N'" + comGioiTinh.Text + "',N'" + txtThongTinHonNhan.Text + "',N'" + txtCMT.Text + "',N'" + dateNgayCap.Text + "',N'" + txtNoiCap.Text + "',N'" + txtChucVu.Text + "',N'" + txtChucDanh.Text + "',N'" + txtLoaiHoaDon.Text + "',N'" + txtThoiGian.Text + "',N'" + dateNgayKy.Text + "',N'" + dateNgayHetHan.Text + "',N'" + txtAnh.Text + "',N'" + txtGhiChu.Text + "')";
			   if (!cls.kttrungkhoa(txtManv.Text, "select MaNV from TblTTNVCoBan"))
			  {
			if (txtManv.Text != "")
			   {
			    cls.thucthiketnoi(insert);
			  dataGrid_CoBan.Refresh();
			 cls.loaddatagridview(dataGrid_CoBan, "select * from TblTTNVCoBan");
			 }
			  else MessageBox.Show("Bạn chưa nhập Mã nhân viên");
			 }
			 else
			  MessageBox.Show("Mã nhân viên này đã tồn tại", "Thêm thất bại", MessageBoxButtons.OK, MessageBoxIcon.Warning);
			  }
			catch
			 {
			  MessageBox.Show("Dữ liệu đầu vào không đúng");
			 }
			


		}

		private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                int hang = e.RowIndex;
                comBoPhan.Text = dataGrid_CoBan.Rows[hang].Cells[0].Value.ToString();
                comMaPhong.Text = dataGrid_CoBan.Rows[hang].Cells[1].Value.ToString();
                txtManv.Text = dataGrid_CoBan.Rows[hang].Cells[2].Value.ToString();
                txtHoTen.Text = dataGrid_CoBan.Rows[hang].Cells[3].Value.ToString();
                txtBiDanh.Text = dataGrid_CoBan.Rows[hang].Cells[4].Value.ToString();
                dateNgaySinh.Text = dataGrid_CoBan.Rows[hang].Cells[5].Value.ToString();
                comGioiTinh.Text = dataGrid_CoBan.Rows[hang].Cells[6].Value.ToString();
                txtThongTinHonNhan.Text = dataGrid_CoBan.Rows[hang].Cells[7].Value.ToString();
                txtCMT.Text = dataGrid_CoBan.Rows[hang].Cells[8].Value.ToString();
                dateNgayCap.Text = dataGrid_CoBan.Rows[hang].Cells[9].Value.ToString();
                txtNoiCap.Text = dataGrid_CoBan.Rows[hang].Cells[10].Value.ToString();
                txtChucVu.Text = dataGrid_CoBan.Rows[hang].Cells[11].Value.ToString();
                txtChucDanh.Text = dataGrid_CoBan.Rows[hang].Cells[12].Value.ToString();
                txtLoaiHoaDon.Text = dataGrid_CoBan.Rows[hang].Cells[13].Value.ToString();
                txtThoiGian.Text = dataGrid_CoBan.Rows[hang].Cells[14].Value.ToString();
                dateNgayKy.Text = dataGrid_CoBan.Rows[hang].Cells[15].Value.ToString();
                dateNgayHetHan.Text = dataGrid_CoBan.Rows[hang].Cells[16].Value.ToString();
                txtAnh.Text = dataGrid_CoBan.Rows[hang].Cells[17].Value.ToString();
                txtGhiChu.Text = dataGrid_CoBan.Rows[hang].Cells[18].Value.ToString();
            }
            catch (Exception)
            {
                MessageBox.Show("");
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            try
            {
                string update = "update TblTTNVCoBan set MaBoPhan=N'" + comBoPhan.Text + "',MaPhong=N'" + comMaPhong.Text + "',HoTen=N'" + txtHoTen.Text + "',BiDanh=N'" + txtBiDanh.Text + "',NgaySinh='" + dateNgaySinh.Text + "',GioiTinh=N'" + comGioiTinh.Text + "',TTHonNhan=N'" + txtThongTinHonNhan.Text + "',CMTND=N'" + txtCMT.Text + "',NgayCap='" + dateNgayCap.Text + "',NoiCap=N'" + txtNoiCap.Text + "',ChucVu=N'" + txtChucVu.Text + "',ChucDanh=N'" + txtChucDanh.Text + "',LoaiHD=N'" + txtLoaiHoaDon.Text + "',ThoiGian=N'" + txtThoiGian.Text + "',NgayKy='" + dateNgayKy.Text + "',NgayHetHan='" + dateNgayHetHan.Text + "',Anh=N'" + txtAnh.Text + "',GhiChu=N'" + txtGhiChu.Text + "' where MaNV=N'" + txtManv.Text + "'";
                cls.thucthiketnoi(update);
                cls.loaddatagridview(dataGrid_CoBan, "select * from TblTTNVCoBan");
            }
            catch
            {
                MessageBox.Show("Dữ liệu đầu vào không đúng");
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            string delete = "delete from TblTTNVCoBan where MaNV=N'" + txtManv.Text + "'";
            if (MessageBox.Show("Bạn có muốn xóa không", "Xóa dữ liệu", MessageBoxButtons.YesNo, MessageBoxIcon.Warning) == DialogResult.Yes)
            {
                cls.thucthiketnoi(delete);
               cls.loaddatagridview(dataGrid_CoBan, "select * from TblTTNVCoBan");
				
			}
        }

        private void textBox9_TextChanged(object sender, EventArgs e)
        {

        }

        private void button4_Click(object sender, EventArgs e)
        {
            frmbaocao fbc = new frmbaocao();
            fbc.ShowDialog();
        }

        private void button1_MouseMove(object sender, MouseEventArgs e)
        {
            ((Button)sender).BackgroundImage = Properties.Resources._133;
        }

        private void button1_MouseLeave(object sender, EventArgs e)
        {
            ((Button)sender).BackgroundImage = Properties.Resources.xanh;
        }

		private void groupBox1_Enter(object sender, EventArgs e)
		{

		}

		private void comboBox2_SelectedIndexChanged(object sender, EventArgs e)
		{

		}

		private void dataGrid_CoBan_CellContentClick(object sender, DataGridViewCellEventArgs e)
		{
			
	}
	}
}
