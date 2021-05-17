Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 43DCE383D94
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 17 May 2021 21:38:45 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4114360D3D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 17 May 2021 19:38:43 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8F23E60CFC; Mon, 17 May 2021 19:38:41 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4A42060B9F;
	Mon, 17 May 2021 19:38:38 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id BC6B660B8D
 for <linaro-mm-sig@lists.linaro.org>; Mon, 17 May 2021 19:38:37 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id B1D7660B9F; Mon, 17 May 2021 19:38:37 +0000 (UTC)
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com
 [209.85.218.50])
 by lists.linaro.org (Postfix) with ESMTPS id A54EA60B8D
 for <linaro-mm-sig@lists.linaro.org>; Mon, 17 May 2021 19:38:35 +0000 (UTC)
Received: by mail-ej1-f50.google.com with SMTP id lg14so10899245ejb.9
 for <linaro-mm-sig@lists.linaro.org>; Mon, 17 May 2021 12:38:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=77Mnh7A6bnQJzQImsAkDCKqT+2ZCgwbnjND7vgbiNLU=;
 b=DzSGrGqLI+chQOzYYaJy0zigRbLOEYrxqAhFY8NDh09R+r8A8GnRhRxOslauOB1vir
 KqVtTOlQ+Mh0Sak719QnItm4RaiHVxujsWzOyCjQaasS8CdpNzG2Y0M3YgBZ3hE0KMBe
 QmuA20UrVh3IqX9NmwyOrQCLwP57Asnh1SIrAOxLagzPzeMUchwvxfZBGwk+SgOOr/PS
 I0grjvmn4r8rHFZr6d3QhcnwCfeqPBl+YSo3vp01to+R4VeyR9XMj1cQo4KOYr0XqyOM
 Q7YZWv8fkeNcBNJAWLmNWw4SspOFwRPumxLTTF1JhNRXu0DU2nDtGGFz+inB46aBYMtr
 mPqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=77Mnh7A6bnQJzQImsAkDCKqT+2ZCgwbnjND7vgbiNLU=;
 b=Obgi9DWgLqPeJ7YG2psaaiGRjRRTFyAnhFUO0sPpErvhoHyNkBly6ft1mbCUWtxzeo
 fvUQH9GL7Wgml8D9dgtGdHzDpEMFSHpNr4zUiJ1zvT3kCdhmCRl24KUzZfqf/b7bWHc0
 3P0eJfa28KvBAmhXjpOYIAn/Bi95trOBFvQFWbItcK0gfQ+0Cl8ExrPKBitqHBb1RZ/Z
 24W9hdqPxtywhOSY5acATLe+ZN3SziPfNBOFDOX9z4SSSXmybO/60KMTVDN08vNDj6gy
 h5d4Un4V2VrEIvJYlC/bK/KLrEyLtrtZStkNcqD2BipmpqJPG8XrcgBHvmVtSyWBY4wm
 UmRw==
X-Gm-Message-State: AOAM530/ImB4x+3EXFBmzv1hsuQ6c92iKYfP54B7Z57eM66EtfIeNz5S
 DAIIHOwEGKSA2VpMetN5ABU=
X-Google-Smtp-Source: ABdhPJxpAaMeZTJKj9CVb4zXyq9oJP/YmJs0hP5jAljsq/Nto5T01F2y/r7wOg1hVX3bJlNUgAJNZQ==
X-Received: by 2002:a17:906:1cda:: with SMTP id
 i26mr1629049ejh.412.1621280314723; 
 Mon, 17 May 2021 12:38:34 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:bd86:58d9:7c79:a095?
 ([2a02:908:1252:fb60:bd86:58d9:7c79:a095])
 by smtp.gmail.com with ESMTPSA id q16sm8946943edw.87.2021.05.17.12.38.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 17 May 2021 12:38:34 -0700 (PDT)
To: Daniel Vetter <daniel@ffwll.ch>
References: <20210517141129.2225-1-christian.koenig@amd.com>
 <YKKF4jOvM4gJT6a4@phenom.ffwll.local>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <5a3e9500-9d6b-a865-5385-fde43da2bf66@gmail.com>
Date: Mon, 17 May 2021 21:38:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <YKKF4jOvM4gJT6a4@phenom.ffwll.local>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [RFC] Add DMA_RESV_USAGE flags
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

QW0gMTcuMDUuMjEgdW0gMTc6MDQgc2NocmllYiBEYW5pZWwgVmV0dGVyOgo+IE9uIE1vbiwgTWF5
IDE3LCAyMDIxIGF0IDA0OjExOjE4UE0gKzAyMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+
IFdlIGhhZCBhIGxvbmcgb3V0c3RhbmRpbmcgcHJvYmxlbSBpbiBhbWRncHUgdGhhdCBidWZmZXJz
IGV4cG9ydGVkIHRvCj4+IHVzZXIgZHJpdmVycyBieSBETUEtYnVmIHNlcmlhbGl6ZSBhbGwgY29t
bWFuZCBzdWJtaXNzaW9ucyB1c2luZyB0aGVtLgo+Pgo+PiBJbiBvdGhlciB3b3JkcyB3ZSBjYW4n
dCBjb21wb3NlIHRoZSBidWZmZXIgd2l0aCBkaWZmZXJlbnQgZW5naW5lcyBhbmQKPj4gdGhlbiBz
ZW5kIGl0IHRvIGFub3RoZXIgZHJpdmVyIGZvciBkaXNwbGF5IGZ1cnRoZXIgcHJvY2Vzc2luZy4K
Pj4KPj4gVGhpcyB3YXMgYWRkZWQgdG8gd29yayBhcm91bmQgdGhlIGZhY3QgdGhhdCBpOTE1IGRp
ZG4ndCB3YW50ZWQgdG8gd2FpdAo+PiBmb3Igc2hhcmVkIGZlbmNlcyBpbiB0aGUgZG1hX3Jlc3Yg
b2JqZWN0cyBiZWZvcmUgZGlzcGxheWluZyBhIGJ1ZmZlci4KPj4KPj4gU2luY2UgdGhpcyBwcm9i
bGVtIGlzIG5vdyBjYXVzaW5nIGlzc3VlcyB3aXRoIFZ1bGthbiB3ZSBuZWVkIHRvIGZpbmQgYQo+
PiBiZXR0ZXIgc29sdXRpb24gZm9yIHRoYXQuCj4+Cj4+IFRoZSBwYXRjaCBzZXQgaGVyZSB0cmll
cyB0byBkbyB0aGlzIGJ5IGFkZGluZyBhbiB1c2FnZSBmbGFnIHRvIHRoZQo+PiBzaGFyZWQgZmVu
Y2VzIG5vdGluZyB3aGVuIGFuZCBob3cgdGhleSBzaG91bGQgcGFydGljaXBhdGUgaW4gaW1wbGlj
aXQKPj4gc3luY2hyb25pemF0aW9uLgo+IFNvIHRoZSB3YXkgdGhpcyBpcyBmaXhlZCBpbiBldmVy
eSBvdGhlciB2dWxrYW4gZHJpdmVyIGlzIHRoYXQgdnVsa2FuCj4gdXNlcnNwYWNlIHNldHMgZmxh
Z3MgaW4gdGhlIENTIGlvY3RsIHdoZW4gaXQgd2FudHMgdG8gc3luY2hyb25pemUgd2l0aAo+IGlt
cGxpY2l0IHN5bmMuIFRoaXMgZ2V0cyB5b3UgbW9zdGx5IHRoZXJlLiBMYXN0IHRpbWUgSSBjaGVj
a2VkIGFtZGdwdQo+IGlzbid0IGRvaW5nIHRoaXMsIGFuZCB5ZXMgdGhhdCdzIGJyb2tlbi4KCkFu
ZCBleGFjdGx5IHRoYXQgaXMgYSByZWFsbHkgYmFkIGFwcHJvYWNoIGFzIGZhciBhcyBJIGNhbiBz
ZWUuIFRoZSAKVnVsa2FuIHN0YWNrIG9uIHRvcCBzaW1wbHkgZG9lc24ndCBrbm93IHdoZW4gdG8g
c2V0IHRoaXMgZmxhZyBkdXJpbmcgQ1MuCgpUaGF0J3MgYWxzbyB0aGUgcmVhc29uIHRoZSBWYWx2
ZSBndXlzIGNhbWUgdXAgd2l0aCBhIHNvbHV0aW9uIHdoZXJlIGVhY2ggCkJPIGdldHMgYSBmbGFn
IGZvciBleHBsaWNpdCBzeW5jLCBidXQgdGhhdCBvbmx5IHdvcmtzIGZvciBleHBvcnRzIGFuZCAK
bm90IGZvciBpbXBvcnRzLgoKPiBJOTE1IGFuZCBpaXJjIG1zbSBoYXMgZXhwbGljaXQgZmxhZ3Mg
Zm9yIHRoaXMsIHBhbmZyb3N0IHdhcyBkZXNpZ25lZCB0bwo+IHN1cHBvcnQgdGhpcyBjb3JyZWN0
bHkgZnJvbSB0aGUgc3RhcnQgKGFsc28gd2l0aCBmbGFncyBJIHRoaW5rKS4gVGhhdCdzIGF0Cj4g
bGVhc3Qgd2hhdCBJIHJlbWVtYmVyIGZyb20gYWxsIHRoZSBkaXNjdXNzaW9ucyBhdCBYREMgYW5k
ICNkcmktZGV2ZWwsIGJ1dAo+IGRpZG4ndCBjaGVjayB0aGUgY29kZSBhZ2FpbiB0byBnaXZlIHlv
dSB0aGUgbGlzdCBvZiB1YXBpIGZsYWdzIHlvdSBuZWVkCj4gZm9yIGVhY2ggZHJpdmVyLgo+Cj4g
VGhlIG90aGVyIHBpZWNlIGlzIG1ha2luZyBzdXJlIHlvdSdyZSBvbmx5IHBpY2tpbmcgdXAgaW1w
bGljaXQgZmVuY2VzIHdoZW4KPiB5b3Ugc2hvdWxkLCBhbmQgbm90IGFueSBsYXRlciBvbmVzLCBm
b3Igd2hpY2ggSmFzb24gaGFzIGEgc29sdXRpb246Cj4KPiBodHRwczovL2xvcmUua2VybmVsLm9y
Zy9kcmktZGV2ZWwvMjAyMTAzMTcyMjE5NDAuMjE0NjY4OC0xLWphc29uQGpsZWtzdHJhbmQubmV0
LwoKWWVzLCBJIGhlbHBlZCB3aXRoIHRoYXQgYXMgd2VsbC4gQnV0IEkgdGhpbmsgdGhhdCB0aGlz
IGlzIGp1c3QgYW5vdGhlciAKd29ya2Fyb3VuZCB3aXRob3V0IHJlYWxseSBhZGRyZXNzaW5nIHRo
ZSB1bmRlcmx5aW5nIHByb2JsZW0uCgo+IElmIGFtZGdwdSBpc24ndCB1c2luZyB0aG9zZSwgdGhl
biB5b3Ugd2lsbCBzdWZmZXIgZnJvbQo+IG92ZXItc3luY2hyb25pemF0aW9uIGluIHZ1bGthbiBh
bmQgcGF5IGEgcHJpY2UuIFRoZSBlbnRpcmUgcG9pbnQgb2YgdnVsa2FuCj4gaXMgdGhhdCB5b3Ug
cGljayB1cCBzeW5jIHBvaW50cyB2ZXJ5IGV4cGxpY2l0bHksIGFuZCB3ZSBhbHNvIG5lZWQgdG8g
aGF2ZQo+IHZlcnkgZXhwbGljaXQgdWFwaSBmb3IgdXNlcnNwYWNlIHRvIHBpY2sgdXAvc2V0IHRo
ZSBpbXBsaWNpdCBmZW5jZXMuCj4KPiBUcnlpbmcgdG8gcGFwZXIgb3ZlciB0aGlzIHdpdGggbW9y
ZSBpbXBsaWNpdCBtYWdpYyBpcyBpbW8ganVzdCB3cm9uZywgYW5kCj4gZGVmaW5pdGVseSBub3Qg
dGhlIGxvbmcgdGVybSBleHBsaWNpdCBzeW5jIG1vZGVsIHdlIHdhbnQuCgpJIGNvbXBsZXRlbHkg
ZGlzYWdyZWUuCgpJbiBteSBvcGluaW9uIHRoZSBpbXBsaWNpdCBzeW5jIG1vZGVsIHdlIGhhdmUg
Zm9yIGRtYV9yZXN2IGN1cnJlbnRseSBpcyAKanVzdCBub3Qgd2VsbCBkZXNpZ25lZCBhdCBhbGws
IHNpbmNlIGl0IGFsd2F5cyByZXF1aXJlcyBjb29wZXJhdGlvbiBmcm9tIAp1c2Vyc3BhY2UuCgpJ
biBvdGhlciB3b3JkcyB5b3UgbmVlZCB0byBrbm93IHdoZW4gdG8gZW5hYmxlIGltcGxpY2l0IHN5
bmMgaW4gCnVzZXJzcGFjZSBhbmQgdGhhdCBpbmZvcm1hdGlvbiBpcyBzaW1wbHkgbm90IHByZXNl
bnQgYWxsIG9mIHRoZSB0aW1lLgoKV2hhdCB3ZSBoYXZlIGRvbmUgaGVyZSBpcyBqdXN0IGtlZXBp
bmcgdGhlIG9sZCByZWFkZXIvd3JpdGVyIGZsYWdzIGk5MTUsIApyYWRlb24gYW5kIG5vdXZlYXUg
b25jZSBoYWQgYW5kIHB1c2hlZCB0aGF0IG91dCB0byBldmVyeWJvZHkgZWxzZSBtYWtpbmcgCnRo
ZSBhc3N1bXB0aW9uIHRoYXQgZXZlcnlib2R5IHdvdWxkIGZvbGxvdyB0aGF0IHdpdGhvdXQgZG9j
dW1lbnRpbmcgdGhlIAphY3R1YWwgcnVsZXMgb2YgZW5nYWdlbWVudCB5b3UgbmVlZCB0byBmb2xs
b3cgaGVyZS4KClRoYXQgd2FzIGEgcmVhbGx5IGJpZyBtaXN0YWtlIGFuZCB3ZSBzaG91bGQgdHJ5
IHRvIGZpeCB0aGF0IHNvb25lciBvciAKbGF0ZXIuIFRoZSBvbmx5IG90aGVyIGNsZWFuIGFsdGVy
bmF0aXZlIEkgc2VlIGlzIHRvIHVzZSBhIGZsYWcgb24gdGhlIApleHBvcnRlciB0byB0ZWxsIHRo
ZSBpbXBvcnRlciBpZiBpdCBzaG91bGQgc3luYyB0byBzaGFyZWQgZmVuY2VzIG9yIG5vdC4KCkFk
ZGl0aW9uYWwgdG8gdGhhdCBJJ20gcGVyZmVjdGx5IGZpbmUgd2l0aCBpbXBsaWNpdCBzeW5jLiBF
eHBsaWNpdCBzeW5jIApjZXJ0YWlubHkgaGFzIHNvbWUgdXNlIGNhc2VzIGFzIHdlbGwsIGJ1dCBJ
IGRvbid0IHNlZSBpdCBhcyBhbiBhYnNvbHV0ZSAKYWR2YW50YWdlIG92ZXIgdGhlIGltcGxpY2l0
IG1vZGVsLgoKUmVnYXJkcywKQ2hyaXN0aWFuLgoKPiAtRGFuaWVsCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlz
dApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3Jn
L21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
