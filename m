Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 86D58964126
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 29 Aug 2024 12:18:03 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1BFB844109
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 29 Aug 2024 10:18:02 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	by lists.linaro.org (Postfix) with ESMTPS id 0F3E73ED3C
	for <linaro-mm-sig@lists.linaro.org>; Thu, 29 Aug 2024 10:17:57 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=gVs2n9D6;
	spf=pass (lists.linaro.org: domain of dan.carpenter@linaro.org designates 209.85.128.53 as permitted sender) smtp.mailfrom=dan.carpenter@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-428e0d184b4so3995045e9.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 29 Aug 2024 03:17:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724926676; x=1725531476; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=cpJAK3u0wNHTYAsOsJ3G+ulHexNJQQgw5rassGX01aE=;
        b=gVs2n9D6d80/Rl1bUsw3hlViapnsfYphszOfVXiFC2NDMv3REAFAG68IDSYJhZJuB6
         VmbuiuEry4pkzaDwMrb9xS8mI/ZMQFCN0RzXvXc/OxZZHexuAj5TyExi3CsXcWZTkAbW
         3tBwpFFOvc1wljWQ9Sf6wp+X4TGgrfZOsIblNf9dONdfOtTJMyiW/DiZ4kVnJkPUE532
         pqyGDL+x2suMRmS3UPoIMlhjAi+/B6cQgSUKyoHbO8NPTmzOfkm26EJIeTkVSgzAiaLy
         BrItCCMgyDprpJkXyv4LJZqbLZvOpV7Lsaerueh5rjLu3JnaTHwv5fXHBveVq6/ucV/q
         Biuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724926676; x=1725531476;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cpJAK3u0wNHTYAsOsJ3G+ulHexNJQQgw5rassGX01aE=;
        b=nwVCYLoG7OMTfhABV0+5S84ETkE00s7LQzWQPks5+7JRaeTAEWa5czWOpS4ArD1bXc
         pcOPsHKKsAx1yPF1lldBu9QW2ExjT8MQ+VDVGvuDUbafSoLS5cSm/3kRdtir5E2eW8su
         KgAPtSODpMDTLkzfw9cmngf/m06nFJqigOK9UHoizDFGZmTIa7RyFNnKQ+IprMmDwtb7
         jbxGQ3oS9QE7Vyu30rF054LNsI/LW2Zvp+ZRpM7cv95btB8QgVHV1KrDV9pHaXRFG+Dl
         l6u5QAgow1g03eEbCowIR3u07qnyEgJOTU4OJf4olR3vetoiq1tJrc8+d649NJy7Vun7
         JScw==
X-Forwarded-Encrypted: i=1; AJvYcCUEovwOkBq36XkxZ6kypoPjfEw0eR08EWnnZpg5MA/ZTJHk3W1BZfqOtz1PgBRLZJ1aNhBa89QRCadP/sxE@lists.linaro.org
X-Gm-Message-State: AOJu0YzCDlkdX8x83gRNCSRTgc/u7vritPLj21jw3agEKUXG5j9VKjz1
	fqNPlY/XCfpi9CwpcdRFV9DvQ0l9sn4dFdfSXQDnjOE6AXklQzvb1PLMn/eYl/AT3w==
X-Google-Smtp-Source: AGHT+IHKHTDFnByEuQrhxWvf5SouAIMF+9fOY83uMUNMpx5WQn1PycSxrrZARYgdc1+Bu9avy5zAFw==
X-Received: by 2002:a05:600c:4707:b0:426:5b21:97fa with SMTP id 5b1f17b1804b1-42bb27a102cmr18206875e9.29.1724926675727;
        Thu, 29 Aug 2024 03:17:55 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42ba6396700sm47212215e9.10.2024.08.29.03.17.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Aug 2024 03:17:55 -0700 (PDT)
Date: Thu, 29 Aug 2024 13:17:51 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: oe-kbuild@lists.linux.dev, Huan Yang <link@vivo.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	Gerd Hoffmann <kraxel@redhat.com>, linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
	linux-kernel@vger.kernel.org
Message-ID: <b9946356-3375-4817-92dd-baaf85802462@stanley.mountain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240822084342.1574914-5-link@vivo.com>
X-Rspamd-Action: no action
X-Spamd-Bar: ----
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 0F3E73ED3C
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.53:from];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[linaro.org:+]
Message-ID-Hash: JGI5HEGVVSIZTAGHVEIEZP6ATFUAYDXT
X-Message-ID-Hash: JGI5HEGVVSIZTAGHVEIEZP6ATFUAYDXT
X-MailFrom: dan.carpenter@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: lkp@intel.com, oe-kbuild-all@lists.linux.dev, opensource.kernel@vivo.com, Huan Yang <link@vivo.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 4/5] udmabuf: udmabuf_create codestyle cleanup
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JGI5HEGVVSIZTAGHVEIEZP6ATFUAYDXT/>
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

url:    https://github.com/intel-lab-lkp/linux/commits/Huan-Yang/udmabuf-direct-map-pfn-when-first-page-fault/20240826-105359
base:   6a7917c89f219f09b1d88d09f376000914a52763
patch link:    https://lore.kernel.org/r/20240822084342.1574914-5-link%40vivo.com
patch subject: [PATCH v4 4/5] udmabuf: udmabuf_create codestyle cleanup
config: x86_64-randconfig-161-20240829 (https://download.01.org/0day-ci/archive/20240829/202408291101.WAf552sW-lkp@intel.com/config)
compiler: gcc-12 (Debian 12.2.0-14) 12.2.0

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
| Closes: https://lore.kernel.org/r/202408291101.WAf552sW-lkp@intel.com/

smatch warnings:
drivers/dma-buf/udmabuf.c:467 udmabuf_create() error: double free of 'folios'

vim +/folios +467 drivers/dma-buf/udmabuf.c

c1bbed66899726 Gurchetan Singh 2019-12-02  396  static long udmabuf_create(struct miscdevice *device,
c1bbed66899726 Gurchetan Singh 2019-12-02  397  			   struct udmabuf_create_list *head,
c1bbed66899726 Gurchetan Singh 2019-12-02  398  			   struct udmabuf_create_item *list)
fbb0de79507819 Gerd Hoffmann   2018-08-27  399  {
fb2c508270085b Huan Yang       2024-08-22  400  	pgoff_t pgcnt = 0, pglimit, max_ipgcnt = 0;
fb2c508270085b Huan Yang       2024-08-22  401  	long ret = -EINVAL;
fbb0de79507819 Gerd Hoffmann   2018-08-27  402  	struct udmabuf *ubuf;
fb2c508270085b Huan Yang       2024-08-22  403  	struct folio **folios = NULL;
fb2c508270085b Huan Yang       2024-08-22  404  	u32 i, flags;
fbb0de79507819 Gerd Hoffmann   2018-08-27  405  
33f35429fc49c0 Gerd Hoffmann   2018-09-11  406  	ubuf = kzalloc(sizeof(*ubuf), GFP_KERNEL);
fbb0de79507819 Gerd Hoffmann   2018-08-27  407  	if (!ubuf)
fbb0de79507819 Gerd Hoffmann   2018-08-27  408  		return -ENOMEM;
fbb0de79507819 Gerd Hoffmann   2018-08-27  409  
c6a3194c05e7e6 Vivek Kasireddy 2024-06-23  410  	INIT_LIST_HEAD(&ubuf->unpin_list);
dc4716d75154b3 Gerd Hoffmann   2018-09-11  411  	pglimit = (size_limit_mb * 1024 * 1024) >> PAGE_SHIFT;
fbb0de79507819 Gerd Hoffmann   2018-08-27  412  	for (i = 0; i < head->count; i++) {
fb2c508270085b Huan Yang       2024-08-22  413  		pgoff_t itempgcnt;
fb2c508270085b Huan Yang       2024-08-22  414  
fb2c508270085b Huan Yang       2024-08-22  415  		if (!PAGE_ALIGNED(list[i].offset))
0d17455ca85ecb Gerd Hoffmann   2018-09-11  416  			goto err;
fb2c508270085b Huan Yang       2024-08-22  417  		if (!PAGE_ALIGNED(list[i].size))
0d17455ca85ecb Gerd Hoffmann   2018-09-11  418  			goto err;
fb2c508270085b Huan Yang       2024-08-22  419  
fb2c508270085b Huan Yang       2024-08-22  420  		itempgcnt = list[i].size >> PAGE_SHIFT;
fb2c508270085b Huan Yang       2024-08-22  421  		pgcnt += itempgcnt;
fb2c508270085b Huan Yang       2024-08-22  422  
fb2c508270085b Huan Yang       2024-08-22  423  		if (pgcnt > pglimit)
0d17455ca85ecb Gerd Hoffmann   2018-09-11  424  			goto err;
fb2c508270085b Huan Yang       2024-08-22  425  
fb2c508270085b Huan Yang       2024-08-22  426  		max_ipgcnt = max_t(unsigned long, itempgcnt, max_ipgcnt);
fbb0de79507819 Gerd Hoffmann   2018-08-27  427  	}
2b6dd600dd7257 Pavel Skripkin  2021-12-30  428  
fb2c508270085b Huan Yang       2024-08-22  429  	if (!pgcnt)
2b6dd600dd7257 Pavel Skripkin  2021-12-30  430  		goto err;
2b6dd600dd7257 Pavel Skripkin  2021-12-30  431  
fb2c508270085b Huan Yang       2024-08-22  432  	ubuf->folios = kvmalloc_array(pgcnt, sizeof(*ubuf->folios),
fbb0de79507819 Gerd Hoffmann   2018-08-27  433  				      GFP_KERNEL);
5e72b2b41a21e5 Vivek Kasireddy 2024-06-23  434  	if (!ubuf->folios) {
fbb0de79507819 Gerd Hoffmann   2018-08-27  435  		ret = -ENOMEM;
0d17455ca85ecb Gerd Hoffmann   2018-09-11  436  		goto err;
fbb0de79507819 Gerd Hoffmann   2018-08-27  437  	}
fb2c508270085b Huan Yang       2024-08-22  438  
fb2c508270085b Huan Yang       2024-08-22  439  	ubuf->offsets = kvcalloc(pgcnt, sizeof(*ubuf->offsets), GFP_KERNEL);
0c8b91ef5100ea Vivek Kasireddy 2024-06-23  440  	if (!ubuf->offsets) {
0c8b91ef5100ea Vivek Kasireddy 2024-06-23  441  		ret = -ENOMEM;
0c8b91ef5100ea Vivek Kasireddy 2024-06-23  442  		goto err;
0c8b91ef5100ea Vivek Kasireddy 2024-06-23  443  	}
fbb0de79507819 Gerd Hoffmann   2018-08-27  444  
fb2c508270085b Huan Yang       2024-08-22  445  	folios = kvmalloc_array(max_ipgcnt, sizeof(*folios), GFP_KERNEL);
c6a3194c05e7e6 Vivek Kasireddy 2024-06-23  446  	if (!folios) {
c6a3194c05e7e6 Vivek Kasireddy 2024-06-23  447  		ret = -ENOMEM;
c6a3194c05e7e6 Vivek Kasireddy 2024-06-23  448  		goto err;
c6a3194c05e7e6 Vivek Kasireddy 2024-06-23  449  	}
c6a3194c05e7e6 Vivek Kasireddy 2024-06-23  450  
fb2c508270085b Huan Yang       2024-08-22  451  	for (i = 0; i < head->count; i++) {
fb2c508270085b Huan Yang       2024-08-22  452  		ret = __udmabuf_pin_list_folios(&list[i], ubuf, folios);

There is a kfree(folios) hidden inside this function.  It doesn't belong there.

fb2c508270085b Huan Yang       2024-08-22  453  		if (ret)
0d17455ca85ecb Gerd Hoffmann   2018-09-11  454  			goto err;
c6a3194c05e7e6 Vivek Kasireddy 2024-06-23  455  	}
452dc1b0221804 Huan Yang       2024-08-22  456  	kvfree(folios);
                                                        ^^^^^^^^^^^^^^
A second free

fbb0de79507819 Gerd Hoffmann   2018-08-27  457  
5e72b2b41a21e5 Vivek Kasireddy 2024-06-23  458  	flags = head->flags & UDMABUF_FLAGS_CLOEXEC ? O_CLOEXEC : 0;
5e72b2b41a21e5 Vivek Kasireddy 2024-06-23  459  	ret = export_udmabuf(ubuf, device, flags);
5e72b2b41a21e5 Vivek Kasireddy 2024-06-23  460  	if (ret < 0)
0d17455ca85ecb Gerd Hoffmann   2018-09-11  461  		goto err;
                                                                ^^^^^^^^

fbb0de79507819 Gerd Hoffmann   2018-08-27  462  
5e72b2b41a21e5 Vivek Kasireddy 2024-06-23  463  	return ret;
fbb0de79507819 Gerd Hoffmann   2018-08-27  464  
0d17455ca85ecb Gerd Hoffmann   2018-09-11  465  err:
c6a3194c05e7e6 Vivek Kasireddy 2024-06-23  466  	unpin_all_folios(&ubuf->unpin_list);
fb2c508270085b Huan Yang       2024-08-22 @467  	kvfree(folios);
                                                        ^^^^^^^^^^^^^
Double free

452dc1b0221804 Huan Yang       2024-08-22  468  	kvfree(ubuf->offsets);
452dc1b0221804 Huan Yang       2024-08-22  469  	kvfree(ubuf->folios);
fbb0de79507819 Gerd Hoffmann   2018-08-27  470  	kfree(ubuf);
fbb0de79507819 Gerd Hoffmann   2018-08-27  471  	return ret;
fbb0de79507819 Gerd Hoffmann   2018-08-27  472  }

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
