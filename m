Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 21D9F4334CA
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 Oct 2021 13:36:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7A9CE6057C
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 Oct 2021 11:36:38 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 3F8E260767; Tue, 19 Oct 2021 11:36:37 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2F0DD6057C;
	Tue, 19 Oct 2021 11:36:33 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D12B460233
 for <linaro-mm-sig@lists.linaro.org>; Tue, 19 Oct 2021 11:36:30 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id CC4FB6057C; Tue, 19 Oct 2021 11:36:30 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com
 [209.85.128.48])
 by lists.linaro.org (Postfix) with ESMTPS id B51866056F
 for <linaro-mm-sig@lists.linaro.org>; Tue, 19 Oct 2021 11:36:28 +0000 (UTC)
Received: by mail-wm1-f48.google.com with SMTP id
 s198-20020a1ca9cf000000b0030d6986ea9fso2734103wme.1
 for <linaro-mm-sig@lists.linaro.org>; Tue, 19 Oct 2021 04:36:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=M3LiI2dynM1nZYamguT3elJaAc7JLzbkcv2J5Oa0PxI=;
 b=ax+//QLOzRzifYURKML/tpp9AHBIzuQk6Eb/IVxhDu6QdiTQJke+WQUPauvV2csBmx
 vbPKIuyiSVuZi6DEux2yncqUbJPeYbXJ70zZjwlwYyLarry5WIdUU8oJqwwqBvTNXexF
 Axa38j9hCiGDqxWXABvDM2kiU1Ht7FmAYx2MTyXhNOvHpHwXgdGarwrChwlX2XJmy4//
 sbr/fsjx8QO11RqD2J+ip+sGz5dLM/exoR2UYnRdHdJ0MRCAVUSySKp1ZII/dOuSwhF5
 IWnSJa0nEKe8FRJA8NX/x4JD6yuoUdjDA2p9o8gz3EflwgSJAY0PycNHbOD1aCwQ0PNM
 I84Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=M3LiI2dynM1nZYamguT3elJaAc7JLzbkcv2J5Oa0PxI=;
 b=bOcQS9+KEtGauGgqsLtGzcIdPRAjramk09kLAuH0oKYUsAHbHn9JGYQBytxAICnzIf
 /tph+U6NqBYUZonda6jdNH9M+2DkCXfLu4uPQOqEYhN29Y6a9SwTBDZz8FijxHgdobpv
 umNGBRQJPBtbOIIGOfxo8off5Ed58xRhjOEtZUMLVsYMcic5FgWkfB8Hq3XOKza4UCrW
 W+F+67BDJpHOzISPwVrTage+GEqGOoV7kumk0R1PxeIZnPZQl8Rw0dgEfnCxEv3Rg+Zj
 PH3ls5d/o/+qqDaCREMRs6SdkaDkXbt2AqVBAGAQJVyECe2Pi8aKUjp0Ik0BYxZYLS8U
 QjsA==
X-Gm-Message-State: AOAM531o6AaqbTmClr1S/syBTlLN5+Nhos/74PtB3XAWiCoFjF7RSKk4
 8Sr0FJkdKTCYDugvJJWIRn0=
X-Google-Smtp-Source: ABdhPJxKJUE9DPjZGw2RK07XvLt3WGtWLRzf2uHEQt87Ekn7KXR93fRKOrmLCyCNH19mhUgCaBWjQw==
X-Received: by 2002:a7b:c8ce:: with SMTP id f14mr5228360wml.177.1634643387780; 
 Tue, 19 Oct 2021 04:36:27 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:f344:748e:38f7:c50?
 ([2a02:908:1252:fb60:f344:748e:38f7:c50])
 by smtp.gmail.com with ESMTPSA id c3sm13657502wrw.66.2021.10.19.04.36.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 19 Oct 2021 04:36:27 -0700 (PDT)
To: Daniel Vetter <daniel@ffwll.ch>
References: <20211005113742.1101-1-christian.koenig@amd.com>
 <20211005113742.1101-13-christian.koenig@amd.com>
 <YWboMfLOIjl1l7tF@phenom.ffwll.local>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <a0a926a7-13d0-b996-5f32-36aa6d74165e@gmail.com>
Date: Tue, 19 Oct 2021 13:36:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <YWboMfLOIjl1l7tF@phenom.ffwll.local>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 12/28] drm/amdgpu: use new iterator in
 amdgpu_ttm_bo_eviction_valuable
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
Cc: linaro-mm-sig@lists.linaro.org, tvrtko.ursulin@linux.intel.com,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMTMuMTAuMjEgdW0gMTY6MDcgc2NocmllYiBEYW5pZWwgVmV0dGVyOgo+IE9uIFR1ZSwgT2N0
IDA1LCAyMDIxIGF0IDAxOjM3OjI2UE0gKzAyMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+
IFNpbXBsaWZ5aW5nIHRoZSBjb2RlIGEgYml0Lgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3Rp
YW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4+IC0tLQo+PiAgIGRyaXZlcnMv
Z3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uYyB8IDE0ICsrKystLS0tLS0tLS0tCj4+ICAg
MSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMTAgZGVsZXRpb25zKC0pCj4+Cj4+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdHRtLmMgYi9kcml2
ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdHRtLmMKPj4gaW5kZXggZThkNzBiNmU2NzM3
Li43MjJlM2M5ZTg4ODIgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1
L2FtZGdwdV90dG0uYwo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVf
dHRtLmMKPj4gQEAgLTEzNDUsMTAgKzEzNDUsOSBAQCBzdGF0aWMgYm9vbCBhbWRncHVfdHRtX2Jv
X2V2aWN0aW9uX3ZhbHVhYmxlKHN0cnVjdCB0dG1fYnVmZmVyX29iamVjdCAqYm8sCj4+ICAgCQkJ
CQkgICAgY29uc3Qgc3RydWN0IHR0bV9wbGFjZSAqcGxhY2UpCj4+ICAgewo+PiAgIAl1bnNpZ25l
ZCBsb25nIG51bV9wYWdlcyA9IGJvLT5yZXNvdXJjZS0+bnVtX3BhZ2VzOwo+PiArCXN0cnVjdCBk
bWFfcmVzdl9pdGVyIHJlc3ZfY3Vyc29yOwo+PiAgIAlzdHJ1Y3QgYW1kZ3B1X3Jlc19jdXJzb3Ig
Y3Vyc29yOwo+PiAtCXN0cnVjdCBkbWFfcmVzdl9saXN0ICpmbGlzdDsKPj4gICAJc3RydWN0IGRt
YV9mZW5jZSAqZjsKPj4gLQlpbnQgaTsKPj4gICAKPj4gICAJLyogU3dhcG91dD8gKi8KPj4gICAJ
aWYgKGJvLT5yZXNvdXJjZS0+bWVtX3R5cGUgPT0gVFRNX1BMX1NZU1RFTSkKPj4gQEAgLTEzNjIs
MTQgKzEzNjEsOSBAQCBzdGF0aWMgYm9vbCBhbWRncHVfdHRtX2JvX2V2aWN0aW9uX3ZhbHVhYmxl
KHN0cnVjdCB0dG1fYnVmZmVyX29iamVjdCAqYm8sCj4+ICAgCSAqIElmIHRydWUsIHRoZW4gcmV0
dXJuIGZhbHNlIGFzIGFueSBLRkQgcHJvY2VzcyBuZWVkcyBhbGwgaXRzIEJPcyB0bwo+PiAgIAkg
KiBiZSByZXNpZGVudCB0byBydW4gc3VjY2Vzc2Z1bGx5Cj4+ICAgCSAqLwo+PiAtCWZsaXN0ID0g
ZG1hX3Jlc3Zfc2hhcmVkX2xpc3QoYm8tPmJhc2UucmVzdik7Cj4+IC0JaWYgKGZsaXN0KSB7Cj4+
IC0JCWZvciAoaSA9IDA7IGkgPCBmbGlzdC0+c2hhcmVkX2NvdW50OyArK2kpIHsKPj4gLQkJCWYg
PSByY3VfZGVyZWZlcmVuY2VfcHJvdGVjdGVkKGZsaXN0LT5zaGFyZWRbaV0sCj4+IC0JCQkJZG1h
X3Jlc3ZfaGVsZChiby0+YmFzZS5yZXN2KSk7Cj4+IC0JCQlpZiAoYW1ka2ZkX2ZlbmNlX2NoZWNr
X21tKGYsIGN1cnJlbnQtPm1tKSkKPj4gLQkJCQlyZXR1cm4gZmFsc2U7Cj4+IC0JCX0KPj4gKwlk
bWFfcmVzdl9mb3JfZWFjaF9mZW5jZSgmcmVzdl9jdXJzb3IsIGJvLT5iYXNlLnJlc3YsIHRydWUs
IGYpIHsKPiAJCQkJCQkJICAgIF5mYWxzZT8KPgo+IEF0IGxlYXN0IEknbSBub3Qgc2VlaW5nIHRo
ZSBjb2RlIGxvb2sgYXQgdGhlIGV4Y2x1c2l2ZSBmZW5jZSBoZXJlLgoKWWVzLCBidXQgdGhhdCdz
IGNvcnJlY3QuIFdlIG5lZWQgdG8gbG9vayBhdCBhbGwgcG90ZW50aWFsIGZlbmNlcy4KCkl0J3Mg
YSBkZXNpZ24gcHJvYmxlbSBpbiBLRkQgaWYgeW91IGFzayBtZSwgYnV0IHRoYXQgaXMgYSBjb21w
bGV0ZWx5IApkaWZmZXJlbnQgdG9waWMuCgpDaHJpc3RpYW4uCgo+IC1EYW5pZWwKPgo+PiArCQlp
ZiAoYW1ka2ZkX2ZlbmNlX2NoZWNrX21tKGYsIGN1cnJlbnQtPm1tKSkKPj4gKwkJCXJldHVybiBm
YWxzZTsKPj4gICAJfQo+PiAgIAo+PiAgIAlzd2l0Y2ggKGJvLT5yZXNvdXJjZS0+bWVtX3R5cGUp
IHsKPj4gLS0gCj4+IDIuMjUuMQo+PgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0Bs
aXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbmFyby1tbS1zaWcK
