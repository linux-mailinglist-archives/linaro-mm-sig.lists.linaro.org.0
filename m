Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id BF430391A06
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 May 2021 16:21:47 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BD2956143A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 May 2021 14:21:46 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id AFF7160EA2; Wed, 26 May 2021 14:21:00 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DA08661615;
	Wed, 26 May 2021 14:20:56 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 6D4DB60AF9
 for <linaro-mm-sig@lists.linaro.org>; Mon, 24 May 2021 13:29:29 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 6B2C460B03; Mon, 24 May 2021 13:29:29 +0000 (UTC)
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com
 [209.85.208.170])
 by lists.linaro.org (Postfix) with ESMTPS id 638DD60AF9
 for <linaro-mm-sig@lists.linaro.org>; Mon, 24 May 2021 13:29:27 +0000 (UTC)
Received: by mail-lj1-f170.google.com with SMTP id s25so33573537ljo.11
 for <linaro-mm-sig@lists.linaro.org>; Mon, 24 May 2021 06:29:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=xQ4af4RoffHiZWw1odnbmrmEK8rRB0AB3mboCujvWr8=;
 b=ICZbNAWSmmLc5SIJU/wxuITZR48alw2/TOGNeyM5P9n6LBeiok57tfHX7v66B2RyOh
 tCzNHxVyqMSrJbUJTzISJV7zFWmaFZPoQG5R6S4pL2Gp5uyZeBi8LZ0Q6VFYHpBbyMIo
 mdUL/vQETA/tnuFe9UVaDOYfjD+wSxaUIGymegy0rXM2yrpkmG44xJHw5lVnFG67KL+x
 cnjTg7NiLvW08G0auT1GgfZz+ReiRx451jgNFTEFipOE6Wh/Wx1auHxzar+iDK1NL1k2
 5tkqygLl5YjGYKoGiybYDDv8gTLY62owIr/PfjemwhRwSY9Ta9KGyxFixXyG+wZVmhME
 wJpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=xQ4af4RoffHiZWw1odnbmrmEK8rRB0AB3mboCujvWr8=;
 b=RpRL+8955bWUOs/W2m2kQgH5VqlMgT8p94ej3tNHim7ngEpbz/6A7qj614Ip9RGNcP
 FOwYaj/BSNWe6mjfj5M2y12mE3C/U8tWJOMharDuZZ01e6wkgNkupOX9keqT/bPb/I/U
 QOknwKlxnl2RIEj3QyNgTiENwT2fy1jAGQvhQSuQ/p2TesIgNO98roDmwXQKJZYJ561O
 +W9xCYEfS3nfm1pu22glyzJg9ElQIALOBA97ifZ8ZzQaRBKLYh+LkUKSC8la5+pEXRVT
 efKacwofZvDlPpG4JASBDMID5RYzN5Cy6PIyO+2Akuy8aWV6hE2PQJzelNLYMDY6UX5s
 ei1g==
X-Gm-Message-State: AOAM531C5ui7azyU2dS3rfJnIIWUevHiyRyPY6CBTtasOMWhin8pvgPT
 dT/i7akq73P1dvvvsRSXdhk=
X-Google-Smtp-Source: ABdhPJwpliZ1bhzHrIn6k8dsn+ajuWurlDphmzkpHPvq//PUv6RJ3XDWfGrujfj76UVdbRyCyvLAcg==
X-Received: by 2002:a2e:92c8:: with SMTP id k8mr16866516ljh.100.1621862966377; 
 Mon, 24 May 2021 06:29:26 -0700 (PDT)
Received: from [192.168.2.145] (109-252-193-110.dynamic.spd-mgts.ru.
 [109.252.193.110])
 by smtp.googlemail.com with ESMTPSA id h12sm1753363ljh.130.2021.05.24.06.29.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 24 May 2021 06:29:26 -0700 (PDT)
From: Dmitry Osipenko <digetx@gmail.com>
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
 <db911ac9-2d08-ae30-03ea-dfb7db964441@gmail.com>
Message-ID: <1e05ad22-c4d8-c443-5377-7cd9db024cb9@gmail.com>
Date: Mon, 24 May 2021 16:29:25 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <db911ac9-2d08-ae30-03ea-dfb7db964441@gmail.com>
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

MjQuMDUuMjAyMSAxNjoyNywgRG1pdHJ5IE9zaXBlbmtvINC/0LjRiNC10YI6Cj4gMjQuMDUuMjAy
MSAxNjozNSwgV2VpIFlvbmdqdW4g0L/QuNGI0LXRgjoKPj4gRml4IHRvIHJldHVybiBhIG5lZ2F0
aXZlIGVycm9yIGNvZGUgZnJvbSB0aGUgZXJyb3IgaGFuZGxpbmcKPj4gY2FzZSBpbnN0ZWFkIG9m
IDAsIGFzIGRvbmUgZWxzZXdoZXJlIGluIHRoaXMgZnVuY3Rpb24uCj4+Cj4+IEZpeGVzOiBkYzgy
NzZiNzg5MTcgKCJzdGFnaW5nOiBtZWRpYTogdGVncmEtdmRlOiB1c2UgcG1fcnVudGltZV9yZXN1
bWVfYW5kX2dldCgpIikKPj4gUmVwb3J0ZWQtYnk6IEh1bGsgUm9ib3QgPGh1bGtjaUBodWF3ZWku
Y29tPgo+PiBTaWduZWQtb2ZmLWJ5OiBXZWkgWW9uZ2p1biA8d2VpeW9uZ2p1bjFAaHVhd2VpLmNv
bT4KPj4gLS0tCj4+ICBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvdGVncmEtdmRlL3ZkZS5jIHwgMyAr
Ky0KPj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPj4K
Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS90ZWdyYS12ZGUvdmRlLmMgYi9k
cml2ZXJzL3N0YWdpbmcvbWVkaWEvdGVncmEtdmRlL3ZkZS5jCj4+IGluZGV4IGUwMjViNjk3NzZm
Mi4uMzIxZDE0YmEyZTU2IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvdGVn
cmEtdmRlL3ZkZS5jCj4+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS90ZWdyYS12ZGUvdmRl
LmMKPj4gQEAgLTEwNzEsNyArMTA3MSw4IEBAIHN0YXRpYyBpbnQgdGVncmFfdmRlX3Byb2JlKHN0
cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4+ICAJICogcG93ZXItY3ljbGUgaXQgaW4gb3Jk
ZXIgdG8gcHV0IGhhcmR3YXJlIGludG8gYSBwcmVkaWN0YWJsZSBsb3dlcgo+PiAgCSAqIHBvd2Vy
IHN0YXRlLgo+PiAgCSAqLwo+PiAtCWlmIChwbV9ydW50aW1lX3Jlc3VtZV9hbmRfZ2V0KGRldikg
PCAwKQo+PiArCWVyciA9IHBtX3J1bnRpbWVfcmVzdW1lX2FuZF9nZXQoZGV2KTsKPj4gKwlpZiAo
ZXJyIDwgMCkKPj4gIAkJZ290byBlcnJfcG1fcnVudGltZTsKPj4gIAo+PiAgCXBtX3J1bnRpbWVf
cHV0KGRldik7Cj4+Cj4gCj4gcG1fcnVudGltZV9yZXN1bWVfYW5kX2dldCgpIGRvZXNuJ3QgcmV0
dXJuIHBvc2l0aXZlIHZhbHVlcywgdGhlIHByZXZpb3VzCj4gdmFyaWFudCB3YXMgb2theS4KPiAK
PiBZb3Ugc2hvdWxkIGFsc28gdmVyc2lvbiB5b3VyIHBhdGNoZXMgYW5kIGFkZCBjaGFuZ2Vsb2cu
Cj4gCgpBaCwgc29ycnkuIFRoZSBvdGhlciBwYXRjaCBpcyBmcm9tIFlhbmcgWWluZ2xpYW5nLgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9s
aXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
