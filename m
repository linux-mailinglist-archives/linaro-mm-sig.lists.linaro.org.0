Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 781F77135A3
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 27 May 2023 18:13:18 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 15BA340426
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 27 May 2023 16:13:17 +0000 (UTC)
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by lists.linaro.org (Postfix) with ESMTPS id 5577D3F946
	for <linaro-mm-sig@lists.linaro.org>; Sat, 27 May 2023 16:13:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=XJnoatpk;
	spf=pass (lists.linaro.org: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1685203991; x=1716739991;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=HRz+uuIx0+xElN7wrpO41PLA0XnkoBsOOVf57+jeZVs=;
  b=XJnoatpkjlBO2Zpnjhn7zf2JbsYOJJgIvKrLmN0a2ThehJ3G4efDu75S
   VkGKRuX9nH6ni8RCTdmGFWuhvhViKD9QaCcxuft9AbQudm2A751C7zeob
   wZcaqIb9HxlIrqNRmJ2uk2Q1RBRc0eRSX/NfZPoUIn1i+v/pJnIMZi3/6
   wuUyK2GAz5mH9tZy/xWIRuJEfKOlHL/MGfFuM5mkzJg1KKKjePDhUPQYx
   eJ6twblxteXZOYGqO8W5/pqM4J5I1oTagoC8a080uYsABlT3IXMUx6099
   jPg2VYlkg5ljBQ85YH1peDbTCDBN+E5eHJnUamebaMkc+1uUN5cL+3ozb
   A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10723"; a="356796434"
X-IronPort-AV: E=Sophos;i="6.00,197,1681196400";
   d="scan'208";a="356796434"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 May 2023 09:13:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10723"; a="1035682343"
X-IronPort-AV: E=Sophos;i="6.00,197,1681196400";
   d="scan'208";a="1035682343"
Received: from lkp-server01.sh.intel.com (HELO dea6d5a4f140) ([10.239.97.150])
  by fmsmga005.fm.intel.com with ESMTP; 27 May 2023 09:13:06 -0700
Received: from kbuild by dea6d5a4f140 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1q2wXS-000K3U-0t;
	Sat, 27 May 2023 16:13:06 +0000
Date: Sun, 28 May 2023 00:12:32 +0800
From: kernel test robot <lkp@intel.com>
To: Min Li <lm0963hack@gmail.com>, alexander.deucher@amd.com
Message-ID: <202305272311.JHzuoUJZ-lkp@intel.com>
References: <20230526123753.16160-1-lm0963hack@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230526123753.16160-1-lm0963hack@gmail.com>
X-Spamd-Result: default: False [-6.10 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,intel.com:s:+];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:134.134.136.24/32];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[134.134.136.24:from];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:4983, ipnet:134.134.136.0/24, country:US];
	FREEMAIL_CC(0.00)[lists.linux.dev,amd.com,gmail.com,ffwll.ch,linaro.org,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	FREEMAIL_TO(0.00)[gmail.com,amd.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[git-scm.com:url,01.org:url,intel.com:email,intel.com:dkim,raw.githubusercontent.com:url];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	DKIM_TRACE(0.00)[intel.com:+];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 5577D3F946
X-Spamd-Bar: ------
Message-ID-Hash: YZCVHFOKG5KBDNE6FKZPELE7IMP5OEWY
X-Message-ID-Hash: YZCVHFOKG5KBDNE6FKZPELE7IMP5OEWY
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev, christian.koenig@amd.com, Xinhui.Pan@amd.com, daniel@ffwll.ch, sumit.semwal@linaro.org, amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm/radeon: fix race condition UAF in radeon_gem_set_domain_ioctl
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YZCVHFOKG5KBDNE6FKZPELE7IMP5OEWY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Min,

kernel test robot noticed the following build warnings:

[auto build test WARNING on drm-misc/drm-misc-next]
[also build test WARNING on linus/master v6.4-rc3 next-20230525]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Min-Li/drm-radeon-fi=
x-race-condition-UAF-in-radeon_gem_set_domain_ioctl/20230527-155623
base:   git://anongit.freedesktop.org/drm/drm-misc drm-misc-next
patch link:    https://lore.kernel.org/r/20230526123753.16160-1-lm0963hack%=
40gmail.com
patch subject: [PATCH] drm/radeon: fix race condition UAF in radeon_gem_set=
_domain_ioctl
config: riscv-randconfig-r042-20230526 (https://download.01.org/0day-ci/arc=
hive/20230527/202305272311.JHzuoUJZ-lkp@intel.com/config)
compiler: clang version 17.0.0 (https://github.com/llvm/llvm-project 4faf3a=
af28226a4e950c103a14f6fc1d1fdabb1b)
reproduce (this is a W=3D1 build):
        mkdir -p ~/bin
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        # https://github.com/intel-lab-lkp/linux/commit/66fb975494d21e80b90=
235b7d8bf0953990c5c89
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Min-Li/drm-radeon-fix-race-conditi=
on-UAF-in-radeon_gem_set_domain_ioctl/20230527-155623
        git checkout 66fb975494d21e80b90235b7d8bf0953990c5c89
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang ~/bin/make.cros=
s W=3D1 O=3Dbuild_dir ARCH=3Driscv olddefconfig
        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang ~/bin/make.cros=
s W=3D1 O=3Dbuild_dir ARCH=3Driscv SHELL=3D/bin/bash drivers/gpu/drm/radeon/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202305272311.JHzuoUJZ-lkp@i=
ntel.com/

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/radeon/radeon_gem.c:462:20: warning: variable 'robj' set=
 but not used [-Wunused-but-set-variable]
           struct radeon_bo *robj;
                             ^
   1 warning generated.


vim +/robj +462 drivers/gpu/drm/radeon/radeon_gem.c

f72a113a71ab08 Christian K=F6nig 2014-08-07  453 =20
771fe6b912fca5 Jerome Glisse   2009-06-05  454  int radeon_gem_set_domain_i=
octl(struct drm_device *dev, void *data,
771fe6b912fca5 Jerome Glisse   2009-06-05  455  				struct drm_file *filp)
771fe6b912fca5 Jerome Glisse   2009-06-05  456  {
771fe6b912fca5 Jerome Glisse   2009-06-05  457  	/* transition the BO to a =
domain -
771fe6b912fca5 Jerome Glisse   2009-06-05  458  	 * just validate the BO in=
to a certain domain */
dee53e7fb3ee01 Jerome Glisse   2012-07-02  459  	struct radeon_device *rdev=
 =3D dev->dev_private;
771fe6b912fca5 Jerome Glisse   2009-06-05  460  	struct drm_radeon_gem_set_=
domain *args =3D data;
771fe6b912fca5 Jerome Glisse   2009-06-05  461  	struct drm_gem_object *gob=
j;
4c7886791264f0 Jerome Glisse   2009-11-20 @462  	struct radeon_bo *robj;
771fe6b912fca5 Jerome Glisse   2009-06-05  463  	int r;
771fe6b912fca5 Jerome Glisse   2009-06-05  464 =20
771fe6b912fca5 Jerome Glisse   2009-06-05  465  	/* for now if someone requ=
ests domain CPU -
771fe6b912fca5 Jerome Glisse   2009-06-05  466  	 * just make sure the buff=
er is finished with */
dee53e7fb3ee01 Jerome Glisse   2012-07-02  467  	down_read(&rdev->exclusive=
_lock);
771fe6b912fca5 Jerome Glisse   2009-06-05  468 =20
771fe6b912fca5 Jerome Glisse   2009-06-05  469  	/* just do a BO wait for n=
ow */
a8ad0bd84f9860 Chris Wilson    2016-05-09  470  	gobj =3D drm_gem_object_lo=
okup(filp, args->handle);
771fe6b912fca5 Jerome Glisse   2009-06-05  471  	if (gobj =3D=3D NULL) {
dee53e7fb3ee01 Jerome Glisse   2012-07-02  472  		up_read(&rdev->exclusive_=
lock);
bf79cb914dbfe8 Chris Wilson    2010-08-04  473  		return -ENOENT;
771fe6b912fca5 Jerome Glisse   2009-06-05  474  	}
7e4d15d90afe46 Daniel Vetter   2011-02-18  475  	robj =3D gem_to_radeon_bo(=
gobj);
771fe6b912fca5 Jerome Glisse   2009-06-05  476 =20
771fe6b912fca5 Jerome Glisse   2009-06-05  477  	r =3D radeon_gem_set_domai=
n(gobj, args->read_domains, args->write_domain);
771fe6b912fca5 Jerome Glisse   2009-06-05  478 =20
f11fb66ae92193 Emil Velikov    2020-05-15  479  	drm_gem_object_put(gobj);
dee53e7fb3ee01 Jerome Glisse   2012-07-02  480  	up_read(&rdev->exclusive_l=
ock);
66fb975494d21e Min Li          2023-05-26  481  	r =3D radeon_gem_handle_lo=
ckup(rdev, r);
771fe6b912fca5 Jerome Glisse   2009-06-05  482  	return r;
771fe6b912fca5 Jerome Glisse   2009-06-05  483  }
771fe6b912fca5 Jerome Glisse   2009-06-05  484 =20

--=20
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
