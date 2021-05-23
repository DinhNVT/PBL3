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
    public partial class frmNhanVien : Form
    {
        public frmNhanVien()
        {
            InitializeComponent();
            pnThongTin.Visible = false;
        }

        private void btnThemMoi_Click(object sender, EventArgs e)
        {
            btnThem1NV.Text = "Thêm";
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
            btnThem1NV.Text = "Ok";
            pnThongTin.Visible = true;
            pnChucNang.Visible = false;
        }
    }
}
