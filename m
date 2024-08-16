Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7980E954982
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 16 Aug 2024 14:55:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2D6833F48B
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 16 Aug 2024 12:55:18 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
	by lists.linaro.org (Postfix) with ESMTPS id 532F83F48B
	for <linaro-mm-sig@lists.linaro.org>; Fri, 16 Aug 2024 12:54:59 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=Wk9ns6OX;
	spf=pass (lists.linaro.org: domain of lkp@intel.com designates 198.175.65.13 as permitted sender) smtp.mailfrom=lkp@intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1723812900; x=1755348900;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=OSCzB+p00nSVW/dHRk7hsNkN+RR7Pek+A4z85VZMYuU=;
  b=Wk9ns6OXkrSYg+bW8dBhgr2+UzHjxzC+GYDE7DITPA5jPloaFyLjjrhw
   a6TVn2w42axNDo5ehOX3i2W7txCtUIFeU39lKrJiokZ+1TwXwS4NIZkNt
   TdBFbLl6v0xmxoTQ1d4JVXko3qGUKO8QYjKzdFM0uCfLgHen9PMW6MuRC
   IEdLVKYTquXEu5FCWYIaFJdx3UsjX+42G023f/j9OXW2AcuVdgxbglMVY
   2T7PYqYz78mA5bGrGtUqrBLKouezvQCAxNw8vO88t8lELkHj/rk1PsVJJ
   AKA95FV1vvHnMaAZPiZFvNp+S1tLPeMUoBYG3yAJK79Ots7t2JdgdOU7E
   w==;
X-CSE-ConnectionGUID: 4JAJvUURQH6y8Oj3Xco5NQ==
X-CSE-MsgGUID: vixRUhJRRciEm+ArYqXx1A==
X-IronPort-AV: E=McAfee;i="6700,10204,11166"; a="33259268"
X-IronPort-AV: E=Sophos;i="6.10,151,1719903600";
   d="scan'208";a="33259268"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
  by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Aug 2024 05:54:58 -0700
X-CSE-ConnectionGUID: QDVynEIoRQ270siWOnAKdw==
X-CSE-MsgGUID: m3JGk3tFT6SARvoiCDI1VA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,151,1719903600";
   d="scan'208";a="90440914"
Received: from lkp-server01.sh.intel.com (HELO 9a732dc145d3) ([10.239.97.150])
  by fmviesa001.fm.intel.com with ESMTP; 16 Aug 2024 05:54:54 -0700
Received: from kbuild by 9a732dc145d3 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1sewTk-0006Qs-2B;
	Fri, 16 Aug 2024 12:54:52 +0000
Date: Fri, 16 Aug 2024 20:54:51 +0800
From: kernel test robot <lkp@intel.com>
To: Huan Yang <link@vivo.com>, Gerd Hoffmann <kraxel@redhat.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
	linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Message-ID: <202408162012.cL9pnFSm-lkp@intel.com>
References: <20240813090518.3252469-6-link@vivo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240813090518.3252469-6-link@vivo.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 532F83F48B
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-8.00 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,intel.com:s:+];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[intel.com:dkim];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:198.175.65.0/26];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:4983, ipnet:198.175.64.0/23, country:US];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: HKTHDDAXNKAQTRFO4QCUP2SZVSFHQACT
X-Message-ID-Hash: HKTHDDAXNKAQTRFO4QCUP2SZVSFHQACT
X-MailFrom: lkp@intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: oe-kbuild-all@lists.linux.dev, opensource.kernel@vivo.com, Huan Yang <link@vivo.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 5/5] udmabuf: remove udmabuf_folio
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HKTHDDAXNKAQTRFO4QCUP2SZVSFHQACT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Huan,

kernel test robot noticed the following build warnings:

[auto build test WARNING on 033a4691702cdca3a613256b0623b8eeacb4985e]

url:    https://github.com/intel-lab-lkp/linux/commits/Huan-Yang/udmabuf-cancel-mmap-page-fault-direct-map-it/20240814-231504
base:   033a4691702cdca3a613256b0623b8eeacb4985e
patch link:    https://lore.kernel.org/r/20240813090518.3252469-6-link%40vivo.com
patch subject: [PATCH v3 5/5] udmabuf: remove udmabuf_folio
config: s390-allyesconfig (https://download.01.org/0day-ci/archive/20240816/202408162012.cL9pnFSm-lkp@intel.com/config)
compiler: s390-linux-gcc (GCC) 14.1.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240816/202408162012.cL9pnFSm-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202408162012.cL9pnFSm-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/dma-buf/udmabuf.c:175: warning: Function parameter or struct member 'ubuf' not described in 'unpin_all_folios'


vim +175 drivers/dma-buf/udmabuf.c

17a7ce20349045 Gurchetan Singh 2019-12-02  165  
d934739404652b Huan Yang       2024-08-13  166  /**
d934739404652b Huan Yang       2024-08-13  167   * unpin_all_folios:		unpin each folio we pinned in create
d934739404652b Huan Yang       2024-08-13  168   * The udmabuf set all folio in folios and pinned it, but for large folio,
d934739404652b Huan Yang       2024-08-13  169   * We may have only used a small portion of the physical in the folio.
d934739404652b Huan Yang       2024-08-13  170   * we will repeatedly, sequentially set the folio into the array to ensure
d934739404652b Huan Yang       2024-08-13  171   * that the offset can index the correct folio at the corresponding index.
d934739404652b Huan Yang       2024-08-13  172   * Hence, we only need to unpin the first iterred folio.
d934739404652b Huan Yang       2024-08-13  173   */
d934739404652b Huan Yang       2024-08-13  174  static void unpin_all_folios(struct udmabuf *ubuf)
c6a3194c05e7e6 Vivek Kasireddy 2024-06-23 @175  {
d934739404652b Huan Yang       2024-08-13  176  	pgoff_t pg;
d934739404652b Huan Yang       2024-08-13  177  	struct folio *last = NULL;
c6a3194c05e7e6 Vivek Kasireddy 2024-06-23  178  
d934739404652b Huan Yang       2024-08-13  179  	for (pg = 0; pg < ubuf->pagecount; pg++) {
d934739404652b Huan Yang       2024-08-13  180  		struct folio *tmp = ubuf->folios[pg];
c6a3194c05e7e6 Vivek Kasireddy 2024-06-23  181  
d934739404652b Huan Yang       2024-08-13  182  		if (tmp == last)
d934739404652b Huan Yang       2024-08-13  183  			continue;
c6a3194c05e7e6 Vivek Kasireddy 2024-06-23  184  
d934739404652b Huan Yang       2024-08-13  185  		last = tmp;
d934739404652b Huan Yang       2024-08-13  186  		unpin_folio(tmp);
d934739404652b Huan Yang       2024-08-13  187  	}
c6a3194c05e7e6 Vivek Kasireddy 2024-06-23  188  }
c6a3194c05e7e6 Vivek Kasireddy 2024-06-23  189  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
