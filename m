Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DD7282D6D
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 Aug 2019 10:05:47 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F08126099C
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 Aug 2019 08:05:45 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E49F060BE0; Tue,  6 Aug 2019 08:05:45 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 91E8D60BFB;
	Tue,  6 Aug 2019 08:05:20 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 87EC16099C
 for <linaro-mm-sig@lists.linaro.org>; Tue,  6 Aug 2019 08:05:17 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 6A61960BFB; Tue,  6 Aug 2019 08:05:17 +0000 (UTC)
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by lists.linaro.org (Postfix) with ESMTPS id 479546099C
 for <linaro-mm-sig@lists.linaro.org>; Tue,  6 Aug 2019 08:05:16 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id n4so86968859wrs.3
 for <linaro-mm-sig@lists.linaro.org>; Tue, 06 Aug 2019 01:05:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=XKqfzXT2xJValwsqxVd6VdfxkGoE2BrzHvpof+ywT1w=;
 b=Lf4dXBYJTSMEkDwMJ3vNFg1/WR79fquQ+eb8q1L4KymcJbm0BMPYZTmoCXD+auHbdN
 wURiRt2+RNzOIhMBhNRYuFSiGbwTnVIMzXJ7O7tR/e+4BsdP8dAzBGdyvkO5S9oO7x+n
 i0D2G0Xg650pPaKXgHWGnhdDN9ZKTkgmILr93WVY4+icq/y0UQEjzQ/dv3TNkxMiilrH
 lZVdi2xej6j64XjCrDuh8pCUm2IeskVMuutnhmXGCDs/Cg7Yb/0FO58dSrV/zzwsVFTl
 TbGuV59AnOmT0lhaz15I1u+tQ7euAyeZUZp8FJpvvEjHxLKt+zEljMmXJ4X8Ht4J4N9k
 W9tg==
X-Gm-Message-State: APjAAAVIVUKTjw1f8PL4ZbRjyH9v2e35BMo87+42fYHtaQJx4iVswNzd
 zqG64FcKppQVq8uD4uX9d8w=
X-Google-Smtp-Source: APXvYqweDAyTbj+ye3psaEHBnkM/WSx6A5TzuxNeHi+hqP9ViZ3xNTrAMrTPt1s4ggi8M4tJZVZJ5g==
X-Received: by 2002:a05:6000:1148:: with SMTP id
 d8mr2853448wrx.354.1565078715463; 
 Tue, 06 Aug 2019 01:05:15 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7?
 ([2a02:908:1252:fb60:be8a:bd56:1f94:86e7])
 by smtp.gmail.com with ESMTPSA id j189sm105606032wmb.48.2019.08.06.01.05.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 06 Aug 2019 01:05:14 -0700 (PDT)
To: Chris Wilson <chris@chris-wilson.co.uk>, dri-devel@lists.freedesktop.org, 
 intel-gfx@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 linux-media@vger.kernel.org
References: <20190805154554.3476-1-christian.koenig@amd.com>
 <156502073694.28464.1595909334726483969@skylake-alporthouse-com>
 <156502405985.28464.7514823669359337891@skylake-alporthouse-com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <f8c213ea-a9ef-8ac1-39c0-0ea83ea2b118@gmail.com>
Date: Tue, 6 Aug 2019 10:05:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <156502405985.28464.7514823669359337891@skylake-alporthouse-com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 1/5] drm/i915: stop pruning reservation
	object after wait
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

QW0gMDUuMDguMTkgdW0gMTg6NTQgc2NocmllYiBDaHJpcyBXaWxzb246Cj4gUXVvdGluZyBDaHJp
cyBXaWxzb24gKDIwMTktMDgtMDUgMTY6NTg6NTYpCj4+IFF1b3RpbmcgQ2hyaXN0aWFuIEvDtm5p
ZyAoMjAxOS0wOC0wNSAxNjo0NTo1MCkKPj4+IFRoZSByZXNlcnZhdGlvbiBvYmplY3Qgc2hvdWxk
IGJlIGNhcGFibGUgb2YgaGFuZGxpbmcgaXRzIGludGVybmFsIG1lbW9yeQo+Pj4gbWFuYWdlbWVu
dCBpdHNlbGYuIEFuZCBzaW5jZSB3ZSBzZWFyY2ggZm9yIGEgZnJlZSBzbG90IHRvIGFkZCB0aGUg
ZmVuY2UKPj4+IGZyb20gdGhlIGJlZ2lubmluZyB0aGlzIGlzIGFjdHVhbGx5IGEgd2FzdGUgb2Yg
dGltZSBhbmQgb25seSBtaW5pbWFsIGhlbHBmdWwuCj4+ICJGcm9tIHRoZSBiZWdpbm5pbmc/IiBB
dHRlbXB0aW5nIHRvIHBydW5lIHNpZ25hbGVkIGZlbmNlcyBvbiBpbnNlcnRpb24gaXMKPj4gcXVp
dGUgcmVjZW50LgoKV2hhdCBJIG1lYW50IHdhcyBmcm9tIHRoZSBiZWdpbm5pbmcgb2YgdGhlIGFy
cmF5IDopIFNvcnJ5IGZvciB0aGUgY29uZnVzaW9uLgoKPj4gSG93ZXZlciwgdGhhdCBkb2Vzbid0
IGhlbHAgdGhlIGNhc2VzIHdoZXJlIHJlc2VydmF0aW9uX29iamVjdCBrZWVwcyBvbgo+PiBob2xk
aW5nIGEgcmVmZXJlbmNlIHRvIHRoZSBmZW5jZXMgZm9yIGlkbGUgb2JqZWN0cy4gSXQncyBhbiBh
YnNvbHV0ZQo+PiBuaWdodG1hcmUgb2YgYSByZWZlcmVuY2UgdHJhcC4KCldlIG9ubHkgZnJlZSB1
cCB0aGUgZmVuY2Ugb2JqZWN0cywgYnV0IG5vdCB0aGUgYXJyYXkgaXRzZWxmLiBBbmQgCnVzZXJz
cGFjZSBhY3R1YWxseSBuZWVkcyB0byBjYWxsIHRoZSB3YWl0IGZ1bmN0aW9uLgoKU28gdG8gbWUg
dGhpcyBsb29rcyBsaWtlIGl0IGRvZXNuJ3QgcmVhbGx5IGhlbHBzIG11Y2guCgo+IEZ3aXcsIGl0
J3MgYSBwZXQgcGVldmUsIGFuZCBub3QgYSBmdW5kYW1lbnRhbCBvYmplY3QgdG8gcmVtb3Zpbmcg
c29tZQo+IGxvb3BzIGluc2lkZSByZXNlcnZhdGlvbl9vYmplY3QuIEhlcmUsIHRoZSBzZXFubyBp
cyBiZWluZyB1c2VkIGFzIGEKPiBndWlkZSB0byBhdm9pZCB0cnlpbmcgdG8gdGFrZSB0aGUgbG9j
ayBpZiBpdCdzIGJlZW4gZXh0ZXJuYWxseSBtb2RpZmllZCwKPiBidXQgaXQgd291bGQgZXF1YWxs
eSB3b3JrIHdpdGgganVzdCBhIHBsYWluIHRyeWxvY2sgKyB0ZXN0X3JjdS4KCk9rLCBnb2luZyB0
byBkbyB0aGlzIHRoZW4gZm9yIHRoZSBtZWFudGltZS4KCj4gQmV0dGVyIHlldCB3b3VsZCBiZSBh
dXRvcHJ1bmluZywgYnV0IHRoYXQgc3VnZ2VzdHMgYSBzbGlnaHRseSBkaWZmZXJlbnQKPiBkYXRh
IHN0cnVjdHVyZSBhbiByYnRyZWUgaW5zdGVhZCBvZiBhbiBhcnJheSBhbmQgc3BpbmxvY2tlZCBj
Yl9saXN0Cj4gbWFuaXB1bGF0aW9uIGluc3RlYWQgb2YgYSBwbGFpbiByZWZjb3VudC4KClllYWgs
IHRoYXQncyBleGFjdGx5IHdoYXQgSSdtIHdvcmtpbmcgb24gd2l0aCB0aGlzIHNlcmllcy4KClJl
Z2FyZHMsCkNocmlzdGlhbi4KCj4gLUNocmlzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0t
c2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlz
dGluZm8vbGluYXJvLW1tLXNpZwo=
