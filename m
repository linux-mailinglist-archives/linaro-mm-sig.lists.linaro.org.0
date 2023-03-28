Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BCEEA6CD176
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Mar 2023 07:17:57 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A2BD03F18E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Mar 2023 05:17:56 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
	by lists.linaro.org (Postfix) with ESMTPS id 5EF3B3ED9A
	for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Mar 2023 17:06:41 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=BzVDmw43;
	spf=pass (lists.linaro.org: domain of nathan@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=nathan@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 475F4B81DB5;
	Tue, 28 Mar 2023 17:06:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0E436C433D2;
	Tue, 28 Mar 2023 17:06:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680023198;
	bh=mSJs5c0u+mvYERTVXLbz2yaNg7v/fMoz0d2LwP4Amgk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BzVDmw43m60lvH0Y3KjAIrZm6woD7+AuyL5jMqZObEtFgYW0wKZ620dZ4j9la6GKr
	 VH8ZHy/40ROZYD+wpguyi+Hnrz60lue9UANRUfwDWT/XbZvuIjg+BtjmxcvuJFM0ua
	 1/dAgwGGnlprh119IPhnzAFOQwKOkEQBbBkalAwVG2eSKm3HK2LifA8O54SAtv0OrM
	 Q2Imm1uVHmcTk5A4PFzt+qUwbo+dHHPbScXOewUOlstrb1u7MWsTKJsUqKlg2vlWQd
	 YoFG0MgDzpeekikZ/MLrmC269nUqCEwWEpjubIXnIc3R2OyHsl3hwsR4CkmRyAcYF8
	 vzeSM9lwScGGA==
Date: Tue, 28 Mar 2023 10:06:36 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Sui Jingfeng <15330273260@189.cn>
Message-ID: <20230328170636.GA1986005@dev-arch.thelio-3990X>
References: <20230320100131.1277034-3-15330273260@189.cn>
 <202303281754.jWI20j2C-lkp@intel.com>
 <027cf6d5-6de2-3424-7a81-a43ab689c3d4@189.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <027cf6d5-6de2-3424-7a81-a43ab689c3d4@189.cn>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 5EF3B3ED9A
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_SPF_ALLOW(-0.20)[+a:ams.source.kernel.org];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[189.cn];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_CC(0.00)[intel.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,lists.linux.dev,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,loongson.cn];
	ASN(0.00)[asn:54825, ipnet:145.40.68.0/24, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[git-scm.com:url,raw.githubusercontent.com:url];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_TLS_ALL(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
X-MailFrom: nathan@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: OSNVAAMK43JD6Q2YYJPRVBI4B3JT4K4X
X-Message-ID-Hash: OSNVAAMK43JD6Q2YYJPRVBI4B3JT4K4X
X-Mailman-Approved-At: Wed, 29 Mar 2023 05:17:46 +0000
CC: kernel test robot <lkp@intel.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian Koenig <christian.koenig@amd.com>, llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Li Yi <liyi@loongson.cn>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v8 2/2] drm: add kms driver for loongson display controller
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OSNVAAMK43JD6Q2YYJPRVBI4B3JT4K4X/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 28, 2023 at 11:22:50PM +0800, Sui Jingfeng wrote:
> HI,
>=20
> On 2023/3/28 17:27, kernel test robot wrote:
> > Hi Sui,
> >=20
> > Thank you for the patch! Perhaps something to improve:
> >=20
> > [auto build test WARNING on drm-misc/drm-misc-next]
> > [also build test WARNING on linus/master v6.3-rc4 next-20230328]
> > [If your patch is applied to the wrong git tree, kindly drop us a note.
> > And when submitting patch, we suggest to use '--base' as documented in
> > https://git-scm.com/docs/git-format-patch#_base_tree_information]
> >=20
> > url:    https://github.com/intel-lab-lkp/linux/commits/Sui-Jingfeng/MAI=
NTAINERS-add-maintainers-for-DRM-LOONGSON-driver/20230320-180408
> > base:   git://anongit.freedesktop.org/drm/drm-misc drm-misc-next
> > patch link:    https://lore.kernel.org/r/20230320100131.1277034-3-15330=
273260%40189.cn
> > patch subject: [PATCH v8 2/2] drm: add kms driver for loongson display =
controller
> > config: i386-allyesconfig (https://download.01.org/0day-ci/archive/2023=
0328/202303281754.jWI20j2C-lkp@intel.com/config)
> > compiler: clang version 14.0.6 (https://github.com/llvm/llvm-project f2=
8c006a5895fc0e329fe15fead81e37457cb1d1)
> > reproduce (this is a W=3D1 build):
> >          wget https://raw.githubusercontent.com/intel/lkp-tests/master/=
sbin/make.cross -O ~/bin/make.cross
> >          chmod +x ~/bin/make.cross
> >          # https://github.com/intel-lab-lkp/linux/commit/80b4115f44993f=
4ebf47b1cb9e8f02953575b977
> >          git remote add linux-review https://github.com/intel-lab-lkp/l=
inux
> >          git fetch --no-tags linux-review Sui-Jingfeng/MAINTAINERS-add-=
maintainers-for-DRM-LOONGSON-driver/20230320-180408
> >          git checkout 80b4115f44993f4ebf47b1cb9e8f02953575b977
> >          # save the config file
> >          mkdir build_dir && cp config build_dir/.config
> >          COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross=
 W=3D1 O=3Dbuild_dir ARCH=3Di386 olddefconfig
> >          COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross=
 W=3D1 O=3Dbuild_dir ARCH=3Di386 SHELL=3D/bin/bash drivers/accel/ drivers/g=
pu/drm/loongson/ drivers/iio/light/ drivers/media/pci/intel/
> >=20
> > If you fix the issue, kindly add following tag where applicable
> > | Reported-by: kernel test robot <lkp@intel.com>
> > | Link: https://lore.kernel.org/oe-kbuild-all/202303281754.jWI20j2C-lkp=
@intel.com/
> >=20
> > All warnings (new ones prefixed by >>):
> >=20
> > > > drivers/gpu/drm/loongson/lsdc_drv.c:232:11: warning: variable 'gpu'=
 is used uninitialized whenever 'if' condition is false [-Wsometimes-uninit=
ialized]
> >             else if (descp->chip =3D=3D CHIP_LS7A2000)
> >                      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >     drivers/gpu/drm/loongson/lsdc_drv.c:235:7: note: uninitialized use =
occurs here
> >             if (!gpu) {
> >                  ^~~
> >     drivers/gpu/drm/loongson/lsdc_drv.c:232:7: note: remove the 'if' if=
 its condition is always true
> >             else if (descp->chip =3D=3D CHIP_LS7A2000)
> >                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >     drivers/gpu/drm/loongson/lsdc_drv.c:217:21: note: initialize the va=
riable 'gpu' to silence this warning
> >             struct pci_dev *gpu;
> >                                ^
> >                                 =3D NULL
> >     1 warning generated.
> > --
>=20
> In practice,=A0 either=A0 descp->chip =3D=3D CHIP_LS7A2000 or descp->chip=
 =3D=3D
> CHIP_LS7A1000 will be happened at runtime.
>=20
> the variable 'gpu' is guaranteed to be initialized when code run at=A0
> drivers/gpu/drm/loongson/lsdc_drv.c:235
>=20
> This warnning is almost wrong here.

Clang's semantic analysis happens before optimizations, meaning it does
not perform interprocedural analysis, so it does not have enough
information at this point to tell that. Either just initialize gpu to
NULL and let the existing 'if (!gpu)' handle it or add a separate else
branch that warns about an unhandled chip value so that it is obvious
what needs to be done if someone forgets to update this statement when a
new chip is supported by this driver.

> > > > drivers/gpu/drm/loongson/lsdc_pll.c:188:14: warning: variable 'diff=
' is used uninitialized whenever 'if' condition is false [-Wsometimes-unini=
tialized]
> >                                     else if (clock_khz < computed)
> >                                              ^~~~~~~~~~~~~~~~~~~~
> >     drivers/gpu/drm/loongson/lsdc_pll.c:191:9: note: uninitialized use =
occurs here
> >                                     if (diff < min) {
> >                                         ^~~~
> >     drivers/gpu/drm/loongson/lsdc_pll.c:188:10: note: remove the 'if' i=
f its condition is always true
> >                                     else if (clock_khz < computed)
> >                                          ^~~~~~~~~~~~~~~~~~~~~~~~~
> >     drivers/gpu/drm/loongson/lsdc_pll.c:177:22: note: initialize the va=
riable 'diff' to silence this warning
> >                                     unsigned int diff;
> >                                                      ^
> >                                                       =3D 0
> >     1 warning generated.
>=20
> Here the robot is also wrong here in practice,
>=20
> because either=A0 if (clock_khz >=3D computed) or else if (clock_khz < co=
mputed)
> will be happen.
>=20
> 'diff' variable is guaranteed to be initialized.

Make that clearer by turning 'else if (clock_khz < computed)' into just
'else' as the warning suggests? I do not see why the condition is
specified at all if it is just an 'else' in practice.

Cheers,
Nathan

> >=20
> > vim +232 drivers/gpu/drm/loongson/lsdc_drv.c
> >=20
> >     212=09
> >     213	static int lsdc_get_dedicated_vram(struct lsdc_device *ldev,
> >     214					   const struct lsdc_desc *descp)
> >     215	{
> >     216		struct drm_device *ddev =3D &ldev->base;
> >     217		struct pci_dev *gpu;
> >     218		resource_size_t base, size;
> >     219=09
> >     220		/*
> >     221		 * The GPU and display controller in LS7A1000/LS7A2000 are sep=
arated
> >     222		 * PCIE devices, they are two devices not one. The DC does not=
 has a
> >     223		 * dedicate VRAM bar, because the BIOS engineer choose to assi=
gn the
> >     224		 * VRAM to the GPU device. Sadly, after years application, thi=
s form
> >     225		 * as a convention for loongson integrated graphics. Bar 2 of =
the GPU
> >     226		 * device contain the base address and size of the VRAM, both =
the GPU
> >     227		 * and the DC can access the on-board VRAM as long as the DMA =
address
> >     228		 * emitted fall in [base, base + size).
> >     229		 */
> >     230		if (descp->chip =3D=3D CHIP_LS7A1000)
> >     231			gpu =3D pci_get_device(PCI_VENDOR_ID_LOONGSON, 0x7A15, NULL);
> >   > 232		else if (descp->chip =3D=3D CHIP_LS7A2000)
> >     233			gpu =3D pci_get_device(PCI_VENDOR_ID_LOONGSON, 0x7A25, NULL);
> >     234=09
> >     235		if (!gpu) {
> >     236			drm_warn(ddev, "No GPU device found\n");
> >     237			return -ENODEV;
> >     238		}
> >     239=09
> >     240		base =3D pci_resource_start(gpu, 2);
> >     241		size =3D pci_resource_len(gpu, 2);
> >     242=09
> >     243		ldev->vram_base =3D base;
> >     244		ldev->vram_size =3D size;
> >     245=09
> >     246		drm_info(ddev, "dedicated vram start: 0x%llx, size: %uMB\n",
> >     247			 (u64)base, (u32)(size >> 20));
> >     248=09
> >     249		return 0;
> >     250	}
> >     251=09
> >=20
>=20
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
