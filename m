Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 80FF7713430
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 27 May 2023 13:07:12 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0F2A03F954
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 27 May 2023 11:07:11 +0000 (UTC)
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	by lists.linaro.org (Postfix) with ESMTPS id 1F87B3F92C
	for <linaro-mm-sig@lists.linaro.org>; Sat, 27 May 2023 11:07:05 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=B8GATqel;
	spf=pass (lists.linaro.org: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1685185625; x=1716721625;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=L74hDA45q+pqqA8K9jTL0kklXJ0cef6Nic12DbO9aA4=;
  b=B8GATqeliCCWfuwpQGwPUwN9S53XYw7kp7B4bTewvoBy345Ey6dSS8Sa
   OIXCWHhA/NWNoFIbs00m0jnLUh7xYo3Lpng+7tkiT+p6trXp1yS6Xt6jU
   XhpskH6Vfk9PSqeODaZ+mVDgg7yuv+R2SNUb0WlnzXBjDc4vvizWT/CYb
   j92nTN/gHPrJwvM6PWeVjLZlSDp8GoBVT9oVqgEv3BGFCbYYknVmYHi4t
   Z1J/Kryw24EQIbdtgjvOzvqmzIfXiIQf9ei/AfOaDgDZ6jiV/NPcgKZGu
   ja/1apxPaxd8etERLtWO74RMnS0errhNmYXT9+48YW724mA0+EDoWuKKy
   g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="334009509"
X-IronPort-AV: E=Sophos;i="6.00,196,1681196400";
   d="scan'208";a="334009509"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 May 2023 04:07:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="708672893"
X-IronPort-AV: E=Sophos;i="6.00,196,1681196400";
   d="scan'208";a="708672893"
Received: from lkp-server01.sh.intel.com (HELO dea6d5a4f140) ([10.239.97.150])
  by fmsmga007.fm.intel.com with ESMTP; 27 May 2023 04:07:01 -0700
Received: from kbuild by dea6d5a4f140 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1q2rlE-000Jv6-0t;
	Sat, 27 May 2023 11:07:00 +0000
Date: Sat, 27 May 2023 19:06:16 +0800
From: kernel test robot <lkp@intel.com>
To: Min Li <lm0963hack@gmail.com>, alexander.deucher@amd.com
Message-ID: <202305271806.VvOClWyB-lkp@intel.com>
References: <20230526123753.16160-1-lm0963hack@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230526123753.16160-1-lm0963hack@gmail.com>
X-Spamd-Result: default: False [-7.50 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,intel.com:s:+];
	BAYES_HAM(-3.00)[100.00%];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_IN_DNSWL_HI(-0.50)[192.55.52.136:from];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:192.55.52.136/32];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,amd.com];
	ASN(0.00)[asn:4983, ipnet:192.55.52.0/24, country:US];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_CC(0.00)[lists.linux.dev,amd.com,gmail.com,ffwll.ch,linaro.org,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-0.998];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 1F87B3F92C
X-Spamd-Bar: -------
Message-ID-Hash: I4XGMRIQLDCLFAGG2KPALLG4324QZMI4
X-Message-ID-Hash: I4XGMRIQLDCLFAGG2KPALLG4324QZMI4
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: oe-kbuild-all@lists.linux.dev, christian.koenig@amd.com, Xinhui.Pan@amd.com, daniel@ffwll.ch, sumit.semwal@linaro.org, amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm/radeon: fix race condition UAF in radeon_gem_set_domain_ioctl
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/I4XGMRIQLDCLFAGG2KPALLG4324QZMI4/>
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
config: mips-allyesconfig (https://download.01.org/0day-ci/archive/20230527=
/202305271806.VvOClWyB-lkp@intel.com/config)
compiler: mips-linux-gcc (GCC) 12.1.0
reproduce (this is a W=3D1 build):
        mkdir -p ~/bin
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/66fb975494d21e80b90=
235b7d8bf0953990c5c89
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Min-Li/drm-radeon-fix-race-conditi=
on-UAF-in-radeon_gem_set_domain_ioctl/20230527-155623
        git checkout 66fb975494d21e80b90235b7d8bf0953990c5c89
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dgcc-12.1.0 ~/bin/make=
.cross W=3D1 O=3Dbuild_dir ARCH=3Dmips olddefconfig
        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dgcc-12.1.0 ~/bin/make=
.cross W=3D1 O=3Dbuild_dir ARCH=3Dmips SHELL=3D/bin/bash drivers/gpu/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202305271806.VvOClWyB-lkp@i=
ntel.com/

All warnings (new ones prefixed by >>):

   drivers/gpu/drm/radeon/radeon_gem.c: In function 'radeon_gem_set_domain_=
ioctl':
>> drivers/gpu/drm/radeon/radeon_gem.c:462:27: warning: variable 'robj' set=
 but not used [-Wunused-but-set-variable]
     462 |         struct radeon_bo *robj;
         |                           ^~~~


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
