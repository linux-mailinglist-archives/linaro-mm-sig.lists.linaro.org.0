Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B3FC387940
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 May 2021 14:54:34 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DF42B61101
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 May 2021 12:54:32 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C2B6561017; Tue, 18 May 2021 12:54:31 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C16A56101A;
	Tue, 18 May 2021 12:54:28 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A403F61017
 for <linaro-mm-sig@lists.linaro.org>; Tue, 18 May 2021 12:54:27 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 98D006101A; Tue, 18 May 2021 12:54:27 +0000 (UTC)
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com
 [209.85.208.53])
 by lists.linaro.org (Postfix) with ESMTPS id 9168161017
 for <linaro-mm-sig@lists.linaro.org>; Tue, 18 May 2021 12:54:25 +0000 (UTC)
Received: by mail-ed1-f53.google.com with SMTP id v5so10956201edc.8
 for <linaro-mm-sig@lists.linaro.org>; Tue, 18 May 2021 05:54:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=/ZKIuAxsctPiM5QgbopDY+F/1qY9+GzQRJTdo3b82ew=;
 b=tnch0RK+sd5/E0RRnNt11iE3PaPz1V5ju2pEeYtb9vEqRLLXyw7yNk1TXfGkRNMUfX
 TynJNLs7EtboJZDDcIYKmB4oT8667v5h20tRzTHrIUQagvZjYJinhF+aXhcwjkK+0bnp
 Rx0zm6INAE4On7E+pJIbnX8jsBXhnsnmIvqKQCXWPXQFv0ZUn9ubS2B3DdjhJyTR7t0s
 eiq70c2xb9I4oXpWuWxe86qsK6voCEsknnchtqX1xG09MnTA5NUfkXkoIWxSoYRbRVRV
 igED3wK542ah4BHAoTcqQl5GgZ25tW9M71bIbx+nOB/MvJg+IVEOquZ+vGIhqHGc+x2f
 pYbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=/ZKIuAxsctPiM5QgbopDY+F/1qY9+GzQRJTdo3b82ew=;
 b=b1nE77Hthnf3ojdkRZmPWVWhVGarNt9nU1Fzkw3C17Jf+8foUG+bs14t84SSJM6JSM
 ndtQCWtEKZWcLKmNGINrEgnrz7HOADNchYFSL1qHTtFqh1UmybX3kjuUqEcGnuH0+jNL
 jofzIPa6XmLaAqL11bRuC3CpZW632bFauMkXPTpMo+m5reAVnEUpxg6K3+PxUj9pjcS/
 AmxKveKV3wCPnucUPKJSESV21gGxKlY3MovGfoQdNeVMsbm19jgEGKd+38k+0IAz5/Q4
 O2xsDuBORjEIRKR/nH2LsiNJJU4ZnlEwYgA93Lq+DMFJP0eT8C/hfWBbs/TmbnU+KBfr
 wBmw==
X-Gm-Message-State: AOAM5315QyXt2aK7HURBcx9SFLJ7AG2j5WKvg6aAuxlKIo16pKWTVGf3
 jZxf1DsKyFI68SqZPngKKB0=
X-Google-Smtp-Source: ABdhPJzU8imyykAaGPEub+caZfbgZjrZ0F1uUl7gWWYQCBGRYB0dRNIOnCXE1dEBGUYuL82z9S4fJA==
X-Received: by 2002:aa7:df96:: with SMTP id b22mr6842674edy.95.1621342464758; 
 Tue, 18 May 2021 05:54:24 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:8470:36a5:2010:f0c4?
 ([2a02:908:1252:fb60:8470:36a5:2010:f0c4])
 by smtp.gmail.com with ESMTPSA id nd36sm9937066ejc.21.2021.05.18.05.54.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 18 May 2021 05:54:24 -0700 (PDT)
To: Daniel Vetter <daniel@ffwll.ch>
References: <20210517141129.2225-1-christian.koenig@amd.com>
 <20210517141129.2225-10-christian.koenig@amd.com>
 <YKLT5WO+7dKUVhyP@phenom.ffwll.local>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <1787849d-1b75-0cfa-8121-373b14ae6998@gmail.com>
Date: Tue, 18 May 2021 14:54:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <YKLT5WO+7dKUVhyP@phenom.ffwll.local>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 09/11] dma-buf: add shared fence usage
 flags
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
Cc: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMTcuMDUuMjEgdW0gMjI6MzYgc2NocmllYiBEYW5pZWwgVmV0dGVyOgo+IE9uIE1vbiwgTWF5
IDE3LCAyMDIxIGF0IDA0OjExOjI3UE0gKzAyMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+
IEFkZCB1c2FnZSBmbGFncyBmb3Igc2hhcmVkIGZlbmNlcyBhbmQgaW1wcm92ZSB0aGUgZG9jdW1l
bnRhdGlvbi4KPj4KPj4gVGhpcyBhbGxvd3MgZHJpdmVyIHRvIGJldHRlciBzcGVjaWZ5IHdoYXQg
c2hhcmVkIGZlbmNlcwo+PiBhcmUgZG9pbmcgd2l0aCB0aGUgcmVzb3VyY2UuCj4+Cj4+IFNpZ25l
ZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KPj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2JvLmMgYi9kcml2ZXJzL2dwdS9k
cm0vdHRtL3R0bV9iby5jCj4+IGluZGV4IDE2Yjg2OWQ5YjFkNi4uYzliYmM0NjMwYWZjIDEwMDY0
NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9iby5jCj4+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS90dG0vdHRtX2JvLmMKPj4gQEAgLTcwMCw3ICs3MDAsNyBAQCBzdGF0aWMgaW50IHR0
bV9ib19hZGRfbW92ZV9mZW5jZShzdHJ1Y3QgdHRtX2J1ZmZlcl9vYmplY3QgKmJvLAo+PiAgIAkJ
cmV0dXJuIHJldDsKPj4gICAJfQo+PiAgIAo+PiAtCWRtYV9yZXN2X2FkZF9zaGFyZWRfZmVuY2Uo
Ym8tPmJhc2UucmVzdiwgZmVuY2UpOwo+PiArCWRtYV9yZXN2X2FkZF9zaGFyZWQoYm8tPmJhc2Uu
cmVzdiwgZmVuY2UsIERNQV9SRVNWX1VTQUdFX1JXKTsKPiBFbnRpcmVseSBhc2lkZSwgYnV0IEkg
ZW5kZWQgdXAgc2NyYXRjaGluZyBteSBoZWFkIGEgbG90IGZvciB3aHkgZXhhY3RseQo+IHRoaXMg
aGVyZSBpcyBhIHNoYXJlZCBmZW5jZSwgYW5kIHdoeSB0aGF0J3Mgb2suIFNpbmNlIGp1c3QgbG9v
a2luZyBhdCB0aGlzCj4gaXQgc2VlbXMgbGlrZSB3YWl0aW5nIGZvciB0aGUgbWVtb3J5IGFsbG9j
YXRpb24gdG8gYWN0dWFsbHkgYmUgb3duZWQgYnkKPiB0aGlzIGRyaXZlciBpcyBvcHRpb25hbC4K
Pgo+IElzIHRoaXMgb2sgYmVjYXVzZSB0aGUgbmV4dCB0aGluZyB3ZSdsbCBkbyBpcyBhIG1vdmUs
IHdoaWNoIHdpbGwgdGhlbiBzZXQKPiB0aGUgZXhjbHVzaXZlIGZlbmNlIGhlcmUuIFdoaWNoIHdp
bGwgdGhlbiB3YWl0IG9uIHRoZSBzaGFyZWQgb25lIGhlcmUsIHNvCj4gaXQgZG9lc24ndCBtYXR0
ZXI/IE9yIHdlbGwsIGFsbG93cyB1cyB0byBwaXBlbGluZSB0aGUgZXZpY3Rpb24gb2YgdHRtX21h
bgo+IGFnYWluc3Qgd2hhdGV2ZXIgbWlnaHQgYmUgY3VycmVudGx5IGtlZXBpbmcgdGhlIGJvIGJ1
c3kgaW4gaXQncyBjdXJyZW50Cj4gcGxhY2U/CgpZZXMsIGV4YWN0bHkgdGhhdC4KCldlIGp1c3Qg
bmVlZCB0byBtYWtlIHN1cmUgdGhhdCB0aGUgbmV3IEJPIGxvY2F0aW9uIGlzbid0IHVzZWQgYmVm
b3JlIHRoZSAKZmVuY2UgaXMgY29tcGxldGVkLCBidXQgd2UgY2FuJ3QgdXNlIHRoZSBleGNsdXNp
dmUgc2xvdCBiZWNhdXNlIHdlIGhhdmUgCm5vIGd1YXJhbnRlZSBhdCBhbGwgdGhhdCB0aGUgbW92
ZSBmZW5jZSBzaWduYWxzIGluIHRoZSByaWdodCBvcmRlci4KClJlZ2FyZHMsCkNocmlzdGlhbi4K
Cj4KPiBNaWdodCBiZSBnb29kIGNhbmRpZGF0ZSB0byBleHBsYWluIHRoaXMgaW4gYSBjb21tZW50
IG9yIHNvbWV0aGluZyBsaWtlCj4gdGhhdC4KPiAtRGFuaWVsCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApM
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21h
aWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
