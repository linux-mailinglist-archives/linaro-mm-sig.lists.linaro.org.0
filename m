Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 96259182D3C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 12 Mar 2020 11:14:55 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 61C2B60665
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 12 Mar 2020 10:14:54 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 5716660C10; Thu, 12 Mar 2020 10:14:54 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A23E1609BE;
	Thu, 12 Mar 2020 10:14:28 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A926960665
 for <linaro-mm-sig@lists.linaro.org>; Thu, 12 Mar 2020 10:14:26 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 9CF98609BE; Thu, 12 Mar 2020 10:14:26 +0000 (UTC)
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by lists.linaro.org (Postfix) with ESMTPS id D390260665
 for <linaro-mm-sig@lists.linaro.org>; Thu, 12 Mar 2020 10:14:24 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id r15so6655352wrx.6
 for <linaro-mm-sig@lists.linaro.org>; Thu, 12 Mar 2020 03:14:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:cc:references:from
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-transfer-encoding:content-language;
 bh=99zCoGvBDUcvfpO9a9LFfTGeDECAtBMxFB8De2EMWp0=;
 b=CiDBvzDBOebabQPRGDfz6YQR4OYkjP/yxLvvgfqypXP2l2IqVNxeSNvm7uxp0Kbszk
 +3KarHY58JoW74tJvwApy62OxiCDUilvxcYVAp2PgO2qiazLC0irBYhdI+YO+t9tCHRs
 WJt0SJOcNpdCIikFZArTJgNN2HMNWjC3DtCxrZ6KgRLB50jExLfsb9qijDfco3uOU3U0
 va8BWsTYZXiM87aMNVyeP4vrMOkNCDVA+7uBzlKBOp92CBfZUhdAD127GD+sM2Wf5uUG
 EJfUofGN7xlOP+m51+AxlsKsTp0nScIjZ+yWBvJrAky9LZ4mbHizkVEwN4PESm03kVqk
 7i1w==
X-Gm-Message-State: ANhLgQ1WogVnbJDEcuZZAso2NPhp0beVNarVD5+qk1CgsEvmHeLQAlYZ
 6hYdzjhwokKvH8YyCgp8GOc=
X-Google-Smtp-Source: ADFU+vt9s8OYMtKOql4lFTOfhZHcw/9Pzcas2QNpKDhr/rEHArSKwzODj38Q68fYVw1jBI8UvymV/Q==
X-Received: by 2002:adf:db84:: with SMTP id u4mr10434358wri.317.1584008064004; 
 Thu, 12 Mar 2020 03:14:24 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7?
 ([2a02:908:1252:fb60:be8a:bd56:1f94:86e7])
 by smtp.gmail.com with ESMTPSA id a9sm27966191wrv.59.2020.03.12.03.14.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 12 Mar 2020 03:14:23 -0700 (PDT)
To: Christoph Hellwig <hch@infradead.org>
References: <20200311135158.3310-1-christian.koenig@amd.com>
 <20200311135158.3310-2-christian.koenig@amd.com>
 <20200311152838.GA24280@infradead.org>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <f2b46f49-a8d0-9d43-3120-e1ed36fc3a80@gmail.com>
Date: Thu, 12 Mar 2020 11:14:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200311152838.GA24280@infradead.org>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: David1.Zhou@amd.com, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, jgg@ziepe.ca,
 daniel@ffwll.ch, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH 1/6] lib/scatterlist: add
	sg_set_dma_addr() function
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
Precedence: list
Reply-To: christian.koenig@amd.com
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMTEuMDMuMjAgdW0gMTY6Mjggc2NocmllYiBDaHJpc3RvcGggSGVsbHdpZzoKPiBPbiBXZWQs
IE1hciAxMSwgMjAyMCBhdCAwMjo1MTo1M1BNICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3Rl
Ogo+PiBUaGlzIGNhbiBiZSB1c2VkIGJ5IGRyaXZlcnMgdG8gc2V0dXAgUDJQIERNQSBiZXR3ZWVu
IGRldmljZQo+PiBtZW1vcnkgd2hpY2ggaXMgbm90IGJhY2tlZCBieSBzdHJ1Y3QgcGFnZXMuCj4+
Cj4+IFRoZSBkcml2ZXJzIG9mIHRoZSBpbnZvbHZlZCBkZXZpY2VzIGFyZSByZXNwb25zaWJsZSBm
b3IKPj4gc2V0dGluZyB1cCBhbmQgdGVhcmluZyBkb3duIERNQSBhZGRyZXNzZXMgYXMgbmVjZXNz
YXJ5Cj4+IHVzaW5nIGRtYV9tYXBfcmVzb3VyY2UoKS4KPj4KPj4gVGhlIHBhZ2UgcG9pbnRlciBp
cyBzZXQgdG8gTlVMTCBhbmQgb25seSB0aGUgRE1BIGFkZHJlc3MsCj4+IGxlbmd0aCBhbmQgb2Zm
c2V0IHZhbHVlcyBhcmUgdmFsaWQuCj4gTkFLLiAgVGhlIG9ubHkgdmFsaWQgd2F5IHRvIGZpbGwg
RE1BIGFkZHJlc3MgaW4gc2NhdHRlcmxpc3RzIGlzCj4gZG1hX21hcF9zZyAvIGRtYV9tYXBfc2df
YXR0ci4KCkhvdyBjYW4gd2UgdGhlbiBtYXAgUENJZSBCQVJzIGludG8gYW4gc2NhdHRlcmxpc3Qg
d2hpY2ggYXJlIG5vdCBiYWNrZWQgCmJ5IHN0cnVjdCBwYWdlcz8KClJlZ2FyZHMsCkNocmlzdGlh
bi4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJv
LW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBz
Oi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
