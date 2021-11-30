Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 77197463053
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Nov 2021 10:53:44 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 550E761A3A
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Nov 2021 09:53:43 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 48BCE60E2A; Tue, 30 Nov 2021 09:53:42 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6BF4B60C4C;
	Tue, 30 Nov 2021 09:53:39 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 64E9760B82
 for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Nov 2021 09:53:37 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 5981760C4C; Tue, 30 Nov 2021 09:53:37 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
 [209.85.221.45])
 by lists.linaro.org (Postfix) with ESMTPS id 506D060B82
 for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Nov 2021 09:53:35 +0000 (UTC)
Received: by mail-wr1-f45.google.com with SMTP id i5so43076930wrb.2
 for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Nov 2021 01:53:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=9jAewgkfdkUy13oF0Vw+kQJGP1Q2pCXHsO2ZLYtP7M0=;
 b=phrPCoj0CiuURlG16h2qWABn6t52M7iGfACBC+ybHTOjBql2MSBknBAjHvDN3PmKnc
 IEtiNlRwD0yxwLgZnpTAUOWZjwtcu8LKZjXP2Je/gfFa7drRQD/fZlOYnHUHYoGPmDAU
 h8vp2+nFRoDX8ky7IrJ8vNNb1jLcf/993VsCyoUTBlMA8NhaHmnw1T1HdI2GnyE+7jNP
 FhbveaKknYaDOSVdckhS6jNDw3mnZYCRJ3GKXDms61xMb2Bnq9XYWAIdLhHplm9FN7n0
 U34U3g4QVZDJgmDyUvTz5Wozc0WWBBXDC+OBXS1RF9sJQYmGqylxhELMDpefyO/thuNC
 e3Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=9jAewgkfdkUy13oF0Vw+kQJGP1Q2pCXHsO2ZLYtP7M0=;
 b=NMgNGdxXk/6QIblCWslcB1IZCRS4ryV9rY7c0R4jFt0jwDysUdija4AN3KOiouJZCj
 7lZwVjaXdkLgnnuBhkUX1ja2fjp3FVF+1f2PQEDpvbgwKHFMprNFFjzSsmO1b/FMMt3N
 KQqB3Hz3wpKFefwHeSjITxhoniivqBw8Y2Nd74wL0lnz4vjpOcpqniTDvYgGBM1upvTH
 Pmyffu26lGJvfwGBW7xHs65Rxhh/t3DFOKkOtQb3yXm2fEU7g5iWZWqSHy7h/AXbbQO9
 LZQ/5DyH3LvDSFirLT3YfzMiZObu/jIBPmSTVXeuBRkCN2/5BrTbLg0EfTvTgYdSWQtW
 JFsA==
X-Gm-Message-State: AOAM532F8Kj1EYDRYT6x4K1qlyjK4KjG2ZnFuu0gQxqZCUkndDoMjDKV
 l35ASW0I7euPJipjKMHvprA5dYSvNy8=
X-Google-Smtp-Source: ABdhPJyb8GszFkk38gyLPHHKmnI8Lk+84enAQ/szYWXJsWstRgri0a5eUjGLB0DaZAfqd4Mz7Enjhg==
X-Received: by 2002:a5d:4cd1:: with SMTP id c17mr39322072wrt.31.1638266014415; 
 Tue, 30 Nov 2021 01:53:34 -0800 (PST)
Received: from ?IPv6:2a02:908:1252:fb60:fa20:e17b:e063:b6d3?
 ([2a02:908:1252:fb60:fa20:e17b:e063:b6d3])
 by smtp.gmail.com with ESMTPSA id n15sm1927871wmq.38.2021.11.30.01.53.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 30 Nov 2021 01:53:33 -0800 (PST)
To: Daniel Vetter <daniel@ffwll.ch>
References: <20211129120659.1815-1-christian.koenig@amd.com>
 <20211129120659.1815-3-christian.koenig@amd.com>
 <YaXoj3fzu0cfhd6j@phenom.ffwll.local>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <cae36fd4-4d15-508a-e91c-62135ffd2f06@gmail.com>
Date: Tue, 30 Nov 2021 10:53:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <YaXoj3fzu0cfhd6j@phenom.ffwll.local>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 02/28] drm/ttm: stop pruning fences
 after wait
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
Cc: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMzAuMTEuMjEgdW0gMTA6MDIgc2NocmllYiBEYW5pZWwgVmV0dGVyOgo+IE9uIE1vbiwgTm92
IDI5LCAyMDIxIGF0IDAxOjA2OjMzUE0gKzAxMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+
IFRoaXMgaXMganVzdCBhYnVzaW5nIGludGVybmFscyBvZiB0aGUgZG1hX3Jlc3Ygb2JqZWN0Lgo+
Pgo+PiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFt
ZC5jb20+Cj4gWWVhaCBJIHRoaW5rIGlmIHdlIHdhbnQgdGhpcyBiYWNrIHdlIGNvdWxkIGRvIGEg
X2xvY2tlZCB2ZXJzaW9uIG9mIHRoZQo+IHdhaXQsIHdoaWNoIHBydW5lcyBpbnRlcm5hbGx5Lgo+
Cj4gUmV2aWV3ZWQtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+Cj4K
PiBCdHcgSSB3b25kZXIsIHNob3VsZCB3ZSBwdXQgdGhlIHR0bV9ib193YWl0IHdyYXBwZXIgb24g
dGhlIGNob3BwaW5nIGJsb2NrCj4gaW4gZ3B1L3RvZG8ucnN0PyBJdCdzIHJlYWxseSBqdXN0IGNv
bXBsaWNhdGlvbnMgSSB0aGluayBpbiBtb3N0IGNhc2VzLiBBbmQKPiBpdCB3b3VsZCBiZSBuaWNl
IGlmIHR0bSBoYXMgdGhlIHNhbWUgZXJybm8gc2VtYW50aWNzIGZvciB0aGVzZSBhcyBldmVyeW9u
ZQo+IGVsc2UsIEkgYWx3YXlzIGdldCB2ZXJ5IGNvbmZ1c2VkIGFib3V0IHRoaXMgc3R1ZmYgLi4u
CgpJJ3ZlIGFscmVhZHkgZG9uZSB0aGF0IHF1aXRlIGEgYml0LCBlLmcuIHJlbW92ZWQgbW9zdCBv
ZiB0aGUgdXNlcnMuCgpXaGF0J3MgbGVmdCBhcmUgdGhlIGNhc2VzIHdoZXJlIHdlIHdhaXQgb3Ig
dGVzdCBzaWduYWxpbmcgaW5zaWRlIG9mIFRUTSAKYW5kIEkgdGhpbmsgSSBjYW4gZ2V0IHJpZCBv
ZiB0aGF0IHdpdGggdGhlIExSVSByZXdvcmsuCgpTbyB5ZWFoLCBhbHJlYWR5IGluIHRoZSBwaXBl
bGluZS4KClJlZ2FyZHMsCkNocmlzdGlhbi4KCj4KPiBDaGVlcnMsIERhbmllbAo+Cj4+IC0tLQo+
PiAgIGRyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2JvLmMgfCAxIC0KPj4gICAxIGZpbGUgY2hhbmdl
ZCwgMSBkZWxldGlvbigtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3R0bS90
dG1fYm8uYyBiL2RyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2JvLmMKPj4gaW5kZXggZTRhMjBhM2E1
ZDE2Li5mYzEyNDQ1N2JhMmYgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS90dG0vdHRt
X2JvLmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm8uYwo+PiBAQCAtMTA4Niw3
ICsxMDg2LDYgQEAgaW50IHR0bV9ib193YWl0KHN0cnVjdCB0dG1fYnVmZmVyX29iamVjdCAqYm8s
Cj4+ICAgCWlmICh0aW1lb3V0ID09IDApCj4+ICAgCQlyZXR1cm4gLUVCVVNZOwo+PiAgIAo+PiAt
CWRtYV9yZXN2X2FkZF9leGNsX2ZlbmNlKGJvLT5iYXNlLnJlc3YsIE5VTEwpOwo+PiAgIAlyZXR1
cm4gMDsKPj4gICB9Cj4+ICAgRVhQT1JUX1NZTUJPTCh0dG1fYm9fd2FpdCk7Cj4+IC0tIAo+PiAy
LjI1LjEKPj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9y
ZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2ln
Cg==
