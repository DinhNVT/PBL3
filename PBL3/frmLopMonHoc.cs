using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace PBL3
{
    public partial class frmLopMonHoc : Form
    {
        public frmLopMonHoc()
        {
            InitializeComponent();
            pnThongTin.Visible = false;
        }

        private void btnThemKhoaHoc_Click(object sender, EventArgs e)
        {
            frmKhoaHoc khoahoc = new frmKhoaHoc();
            khoahoc.ShowDialog();
        }

        private void btnThemMoiKH_Click(object sender, EventArgs e)
        {
            btnThem1LopHoc.Text = "Thêm";
            pnThongTin.Visible = true;
            pnChucNang.Visible = false;

        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            pnThongTin.Visible = false;
            pnChucNang.Visible = true;
        }

        private void btnSua_Click(object sender, EventArgs e)
        {
            btnThem1LopHoc.Text = "Ok";
            pnThongTin.Visible = true;
            pnChucNang.Visible = false;
        }
    }
}
