Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0965A678C5C
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 Jan 2023 00:59:53 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7E87244445
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 23 Jan 2023 23:59:51 +0000 (UTC)
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by lists.linaro.org (Postfix) with ESMTPS id 370864443A
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Jan 2023 23:59:35 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=RmmmPo38;
	spf=pass (lists.linaro.org: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1674518375; x=1706054375;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=QAMUQ1C9nh+0FsG2N/002dB6YDeAObemhBwJPCkLwIw=;
  b=RmmmPo38SOGHP++wGow05ZgqbsbzC6XFb4gqSMjky3c56m9HEMhwPsf3
   mA51S6SUskZy2Im8JqGLYWgD1rZjur0NOQmq+L6wMCt37gLM8MFV0CE52
   I31NBD05K3mfa/QCqall/QdcSVyu5MKTLd9V+vUMQcGVqdkiz5M2/IBzN
   LWUa5SQBE7E6TBx8Lpl6/Q3WpbJPLl8ughh6FPEu3NKzI3oZVEKLIso53
   EsoCRiWkI7WFb5oGht+yj+rty8qg5kxpu2Yb74WbQs+kN4YvB6SxKimVo
   oWa2h7BUgzVaM7L1Dz0eaibCBkw1LI4rvJmsr4Ur3VJr/HWn0GxrKjTRg
   A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="390698561"
X-IronPort-AV: E=Sophos;i="5.97,240,1669104000";
   d="scan'208";a="390698561"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Jan 2023 15:59:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="694139295"
X-IronPort-AV: E=Sophos;i="5.97,240,1669104000";
   d="scan'208";a="694139295"
Received: from lkp-server01.sh.intel.com (HELO 5646d64e7320) ([10.239.97.150])
  by orsmga001.jf.intel.com with ESMTP; 23 Jan 2023 15:59:27 -0800
Received: from kbuild by 5646d64e7320 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1pK6ik-0005xg-39;
	Mon, 23 Jan 2023 23:59:27 +0000
Date: Tue, 24 Jan 2023 07:58:37 +0800
From: kernel test robot <lkp@intel.com>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
	l.stach@pengutronix.de, nicolas@ndufresne.ca, ppaalanen@gmail.com,
	sumit.semwal@linaro.org, daniel@ffwll.ch, robdclark@gmail.com,
	tfiga@chromium.org, sebastian.wick@redhat.com, hverkuil@xs4all.nl,
	dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
	linux-media@vger.kernel.org, benjamin.gaignard@collabora.com,
	lmark@codeaurora.org, labbott@redhat.com, Brian.Starkey@arm.com,
	jstultz@google.com, laurent.pinchart@ideasonboard.com,
	mchehab@kernel.org
Message-ID: <202301240717.tim1ggHo-lkp@intel.com>
References: <20230123123756.401692-3-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230123123756.401692-3-christian.koenig@amd.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 370864443A
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.00 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,intel.com:s:+];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[intel.com:dkim];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	RCVD_IN_DNSWL_HI(-0.50)[134.134.136.100:from];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:134.134.136.100/32];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,pengutronix.de,ndufresne.ca,linaro.org,ffwll.ch,chromium.org,redhat.com,xs4all.nl,lists.freedesktop.org,lists.linaro.org,vger.kernel.org,collabora.com,codeaurora.org,arm.com,google.com,ideasonboard.com,kernel.org];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:4983, ipnet:134.134.136.0/24, country:US];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_RCPT(0.00)[];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: NVSFYBSCKEDMBUGWCXSURYCOHAIA7FSW
X-Message-ID-Hash: NVSFYBSCKEDMBUGWCXSURYCOHAIA7FSW
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/2] media: uvcvideo: expose dma-heap hint to userspace
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NVSFYBSCKEDMBUGWCXSURYCOHAIA7FSW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Christian,

I love your patch! Perhaps something to improve:

[auto build test WARNING on drm-misc/drm-misc-next]
[also build test WARNING on media-tree/master drm-tip/drm-tip linus/master =
v6.2-rc5]
[cannot apply to next-20230123]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Christian-K-nig/medi=
a-uvcvideo-expose-dma-heap-hint-to-userspace/20230123-213836
base:   git://anongit.freedesktop.org/drm/drm-misc drm-misc-next
patch link:    https://lore.kernel.org/r/20230123123756.401692-3-christian.=
koenig%40amd.com
patch subject: [PATCH 2/2] media: uvcvideo: expose dma-heap hint to userspa=
ce
config: hexagon-randconfig-r032-20230123 (https://download.01.org/0day-ci/a=
rchive/20230124/202301240717.tim1ggHo-lkp@intel.com/config)
compiler: clang version 16.0.0 (https://github.com/llvm/llvm-project 4196ca=
3278f78c6e19246e54ab0ecb364e37d66a)
reproduce (this is a W=3D1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/adc04dccd892eec7f84=
c6ec112b48df376172e48
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Christian-K-nig/media-uvcvideo-exp=
ose-dma-heap-hint-to-userspace/20230123-213836
        git checkout adc04dccd892eec7f84c6ec112b48df376172e48
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross W=3D=
1 O=3Dbuild_dir ARCH=3Dhexagon olddefconfig
        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross W=3D=
1 O=3Dbuild_dir ARCH=3Dhexagon SHELL=3D/bin/bash drivers/media/usb/uvc/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from drivers/media/usb/uvc/uvc_driver.c:10:
>> include/linux/dma-heap.h:92:5: warning: no previous prototype for functi=
on 'dma_heap_create_device_link' [-Wmissing-prototypes]
   int dma_heap_create_device_link(struct device *dev, const char *heap)
       ^
   include/linux/dma-heap.h:92:1: note: declare 'static' if the function is=
 not intended to be used outside of this translation unit
   int dma_heap_create_device_link(struct device *dev, const char *heap)
   ^
   static=20
>> include/linux/dma-heap.h:97:6: warning: no previous prototype for functi=
on 'dma_heap_remove_device_link' [-Wmissing-prototypes]
   void dma_heap_remove_device_link(struct device *dev)
        ^
   include/linux/dma-heap.h:97:1: note: declare 'static' if the function is=
 not intended to be used outside of this translation unit
   void dma_heap_remove_device_link(struct device *dev)
   ^
   static=20
   In file included from drivers/media/usb/uvc/uvc_driver.c:16:
   In file included from include/linux/usb.h:16:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:11:
   In file included from ./arch/hexagon/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/hexagon/include/asm/io.h:334:
   include/asm-generic/io.h:547:31: warning: performing pointer arithmetic =
on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val =3D __raw_readb(PCI_IOBASE + addr);
                             ~~~~~~~~~~ ^
   include/asm-generic/io.h:560:61: warning: performing pointer arithmetic =
on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val =3D __le16_to_cpu((__le16 __force)__raw_readw(PCI_IOBASE + a=
ddr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/little_endian.h:37:51: note: expanded from =
macro '__le16_to_cpu'
   #define __le16_to_cpu(x) ((__force __u16)(__le16)(x))
                                                     ^
   In file included from drivers/media/usb/uvc/uvc_driver.c:16:
   In file included from include/linux/usb.h:16:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:11:
   In file included from ./arch/hexagon/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/hexagon/include/asm/io.h:334:
   include/asm-generic/io.h:573:61: warning: performing pointer arithmetic =
on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val =3D __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + a=
ddr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/little_endian.h:35:51: note: expanded from =
macro '__le32_to_cpu'
   #define __le32_to_cpu(x) ((__force __u32)(__le32)(x))
                                                     ^
   In file included from drivers/media/usb/uvc/uvc_driver.c:16:
   In file included from include/linux/usb.h:16:
   In file included from include/linux/interrupt.h:11:
   In file included from include/linux/hardirq.h:11:
   In file included from ./arch/hexagon/include/generated/asm/hardirq.h:1:
   In file included from include/asm-generic/hardirq.h:17:
   In file included from include/linux/irq.h:20:
   In file included from include/linux/io.h:13:
   In file included from arch/hexagon/include/asm/io.h:334:
   include/asm-generic/io.h:584:33: warning: performing pointer arithmetic =
on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writeb(value, PCI_IOBASE + addr);
                               ~~~~~~~~~~ ^
   include/asm-generic/io.h:594:59: warning: performing pointer arithmetic =
on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writew((u16 __force)cpu_to_le16(value), PCI_IOBASE + addr);
                                                         ~~~~~~~~~~ ^
   include/asm-generic/io.h:604:59: warning: performing pointer arithmetic =
on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writel((u32 __force)cpu_to_le32(value), PCI_IOBASE + addr);
                                                         ~~~~~~~~~~ ^
   8 warnings generated.


vim +/dma_heap_create_device_link +92 include/linux/dma-heap.h

4ce5c5c0cf31f4 Christian K=F6nig 2023-01-23   91 =20
4ce5c5c0cf31f4 Christian K=F6nig 2023-01-23  @92  int dma_heap_create_devic=
e_link(struct device *dev, const char *heap)
4ce5c5c0cf31f4 Christian K=F6nig 2023-01-23   93  {
4ce5c5c0cf31f4 Christian K=F6nig 2023-01-23   94  	return 0;
4ce5c5c0cf31f4 Christian K=F6nig 2023-01-23   95  }
4ce5c5c0cf31f4 Christian K=F6nig 2023-01-23   96 =20
4ce5c5c0cf31f4 Christian K=F6nig 2023-01-23  @97  void dma_heap_remove_devi=
ce_link(struct device *dev)
4ce5c5c0cf31f4 Christian K=F6nig 2023-01-23   98  {
4ce5c5c0cf31f4 Christian K=F6nig 2023-01-23   99  }
4ce5c5c0cf31f4 Christian K=F6nig 2023-01-23  100 =20

--=20
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
