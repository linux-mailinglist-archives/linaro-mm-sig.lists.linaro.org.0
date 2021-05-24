Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C1EF391A01
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 May 2021 16:21:44 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B57966145E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 May 2021 14:21:43 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 9D96F61401; Wed, 26 May 2021 14:20:55 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9F3DE61445;
	Wed, 26 May 2021 14:20:52 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 90B8660AF9
 for <linaro-mm-sig@lists.linaro.org>; Mon, 24 May 2021 13:27:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 86A2760B03; Mon, 24 May 2021 13:27:50 +0000 (UTC)
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com
 [209.85.167.46])
 by lists.linaro.org (Postfix) with ESMTPS id 80CFE60AF9
 for <linaro-mm-sig@lists.linaro.org>; Mon, 24 May 2021 13:27:48 +0000 (UTC)
Received: by mail-lf1-f46.google.com with SMTP id b26so24610920lfq.4
 for <linaro-mm-sig@lists.linaro.org>; Mon, 24 May 2021 06:27:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=WlD4zojrALQJ3lMjLIav5M7SKi5ELnimDryncsQ/eew=;
 b=n+janOnwDY0e+M/oqh/h5lp+KO3spsFId0m8fYDlrunNShBYLSDx99+oihuZFnQrKb
 p+yan76rURm+le3301pH9UEAHBSF0dey5vrlm3Gz229XQARguK7u66/P97HssAFcT/kL
 Q49eHUPqimmyUiQr6+ylw0QD1G4lGXs8AkPEBnBLotdqPQBDLtjMzykFtPq2T5Ws7ji4
 T3939zY0oAjChf4BxQA6FJtqXJ9v7+VEwVKHVz5rrYoQHKzTxSqRSuy7obS/A1EYKgEC
 QvRJpo3uM/ObkgZRe1RsNhDvL4Ba93MVrtleRksDndDfVqsZFcD2SfNhkyuXJhMWVZCc
 NIAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=WlD4zojrALQJ3lMjLIav5M7SKi5ELnimDryncsQ/eew=;
 b=khDNsFwk0o4VarjHuDHfapi4x+vs/mXvbApZewFELAnuygbngoEE/wc5QeP3pz9+Qb
 tiVxAeVEbzS7k/O0dFILTPIzWY8UJPxiPXpd4fcv6LV/5ZdOX4/3+DNvVATNvriEEgRK
 +ZvgQgbhh8sfAkxvjjuZfgTrl7RNKyjupih75qM3oSlAiM9qautYxMS5iUq6XMplZMkZ
 c8ZcPoMohtfAq2gKs1vQND0IEzfH0EPIOkHUL11zaV9CTsNhbQPGmKPcFCRB06RYgjXK
 P/C/5M7QwN7fBJV2i9Jjw2cG/XVL8jf2DQ62Jlw8udm5qcDepQLTPZnQmbfZSEhvF3d7
 ZRug==
X-Gm-Message-State: AOAM533wQ5z03moGNQ5ToC1XMrYiL6SBeCp9pR7itENJHVUyhLuzK1RW
 k1N4e3sfs9Xep2pRl6NZBD4=
X-Google-Smtp-Source: ABdhPJx21C2ia2YRPJ+KM6HGkOOUDyuFOa4OvvZsYw21/Dc6XaNds85PS5+Mk5I/jXr0R6uagP0uBw==
X-Received: by 2002:a05:6512:3dac:: with SMTP id
 k44mr10709502lfv.256.1621862867427; 
 Mon, 24 May 2021 06:27:47 -0700 (PDT)
Received: from [192.168.2.145] (109-252-193-110.dynamic.spd-mgts.ru.
 [109.252.193.110])
 by smtp.googlemail.com with ESMTPSA id a25sm1763802ljp.11.2021.05.24.06.27.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 24 May 2021 06:27:47 -0700 (PDT)
To: Wei Yongjun <weiyongjun1@huawei.com>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
References: <20210524133550.2363884-1-weiyongjun1@huawei.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <db911ac9-2d08-ae30-03ea-dfb7db964441@gmail.com>
Date: Mon, 24 May 2021 16:27:46 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210524133550.2363884-1-weiyongjun1@huawei.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Wed, 26 May 2021 14:18:46 +0000
Subject: Re: [Linaro-mm-sig] [PATCH -next] media: staging: tegra-vde: Fix
 error return code in tegra_vde_probe()
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Cc: linux-staging@lists.linux.dev, kernel-janitors@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 Hulk Robot <hulkci@huawei.com>, linux-tegra@vger.kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

MjQuMDUuMjAyMSAxNjozNSwgV2VpIFlvbmdqdW4g0L/QuNGI0LXRgjoKPiBGaXggdG8gcmV0dXJu
IGEgbmVnYXRpdmUgZXJyb3IgY29kZSBmcm9tIHRoZSBlcnJvciBoYW5kbGluZwo+IGNhc2UgaW5z
dGVhZCBvZiAwLCBhcyBkb25lIGVsc2V3aGVyZSBpbiB0aGlzIGZ1bmN0aW9uLgo+IAo+IEZpeGVz
OiBkYzgyNzZiNzg5MTcgKCJzdGFnaW5nOiBtZWRpYTogdGVncmEtdmRlOiB1c2UgcG1fcnVudGlt
ZV9yZXN1bWVfYW5kX2dldCgpIikKPiBSZXBvcnRlZC1ieTogSHVsayBSb2JvdCA8aHVsa2NpQGh1
YXdlaS5jb20+Cj4gU2lnbmVkLW9mZi1ieTogV2VpIFlvbmdqdW4gPHdlaXlvbmdqdW4xQGh1YXdl
aS5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS90ZWdyYS12ZGUvdmRlLmMgfCAz
ICsrLQo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4g
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS90ZWdyYS12ZGUvdmRlLmMgYi9k
cml2ZXJzL3N0YWdpbmcvbWVkaWEvdGVncmEtdmRlL3ZkZS5jCj4gaW5kZXggZTAyNWI2OTc3NmYy
Li4zMjFkMTRiYTJlNTYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL3RlZ3Jh
LXZkZS92ZGUuYwo+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS90ZWdyYS12ZGUvdmRlLmMK
PiBAQCAtMTA3MSw3ICsxMDcxLDggQEAgc3RhdGljIGludCB0ZWdyYV92ZGVfcHJvYmUoc3RydWN0
IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgCSAqIHBvd2VyLWN5Y2xlIGl0IGluIG9yZGVyIHRv
IHB1dCBoYXJkd2FyZSBpbnRvIGEgcHJlZGljdGFibGUgbG93ZXIKPiAgCSAqIHBvd2VyIHN0YXRl
Lgo+ICAJICovCj4gLQlpZiAocG1fcnVudGltZV9yZXN1bWVfYW5kX2dldChkZXYpIDwgMCkKPiAr
CWVyciA9IHBtX3J1bnRpbWVfcmVzdW1lX2FuZF9nZXQoZGV2KTsKPiArCWlmIChlcnIgPCAwKQo+
ICAJCWdvdG8gZXJyX3BtX3J1bnRpbWU7Cj4gIAo+ICAJcG1fcnVudGltZV9wdXQoZGV2KTsKPiAK
CnBtX3J1bnRpbWVfcmVzdW1lX2FuZF9nZXQoKSBkb2Vzbid0IHJldHVybiBwb3NpdGl2ZSB2YWx1
ZXMsIHRoZSBwcmV2aW91cwp2YXJpYW50IHdhcyBva2F5LgoKWW91IHNob3VsZCBhbHNvIHZlcnNp
b24geW91ciBwYXRjaGVzIGFuZCBhZGQgY2hhbmdlbG9nLgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5h
cm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxt
YW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
