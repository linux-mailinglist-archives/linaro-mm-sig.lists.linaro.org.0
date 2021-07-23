Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 83DC13D3693
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 23 Jul 2021 10:22:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 950F4631CC
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 23 Jul 2021 08:22:48 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id CBB00606A3; Fri, 23 Jul 2021 08:22:47 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 91576606A3;
	Fri, 23 Jul 2021 08:22:42 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 0AFEF6057D
 for <linaro-mm-sig@lists.linaro.org>; Fri, 23 Jul 2021 08:22:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 07B60606A3; Fri, 23 Jul 2021 08:22:40 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
 [209.85.221.54])
 by lists.linaro.org (Postfix) with ESMTPS id E8C7F6057D
 for <linaro-mm-sig@lists.linaro.org>; Fri, 23 Jul 2021 08:22:37 +0000 (UTC)
Received: by mail-wr1-f54.google.com with SMTP id z7so1368763wrn.11
 for <linaro-mm-sig@lists.linaro.org>; Fri, 23 Jul 2021 01:22:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=eHQIcjQXUTuq7R+K/4eHvbaN0F5Gzr6UU0DXUwmBLJk=;
 b=nzcmKaSw5a9/iHEpD8IGwqxpV6+wQbsa6rC46XSES6JjF07FEKVg5FjKb1JTD1MJUp
 UWb+whYWfBLhf/apn1zGhcaT4qohXVV9Xxj+alDN1LG2wDWWnRrc4X6n0KHkAXqB4ry3
 EuYXMqVBCY8zFOqB5Bl21/xMzA/+RuztnUcARafe2vZJkDUEysgxx9fP8cYwtGQeWGrr
 KCFLMGwrWz1DZBQekRznkbB/lVRCjDPnvOmYPL749yv5CiBnHTr6FGF8M0FDMUoObyn7
 lu/nEXdekEdZuKsYKFZGN/QFViN1Fvqo8TvwjUbGuzVt2NKGXWZHmUzfVR28BQ1W3bzs
 x78A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=eHQIcjQXUTuq7R+K/4eHvbaN0F5Gzr6UU0DXUwmBLJk=;
 b=LOn9gHIeXTSXDneFKrR4eqsHFGctVrCoBTgCJezdd++ena3ywWnD1M2kERpnpHKm61
 U5SMwqcXM47e37Spbm/i62VqLB8cknpWG4H3dz9/mRP+o4AK7SEIZu4rcEUCR7winKHd
 2VE7Ud39rFlBj4ovpHAlwvI1PkIH4aGH3kBKrjYb0r/1bBBYjgrDPhFTOh4XaHxNMPMT
 bh2UBmXeqSR3LuGf2/HRAvJitMLPImvQoPzybAuYCTt7+TDXSY+QA+3ednnnEWMymFKW
 tPb66JZDX8QLi11UJKAf2hE4yWo/HF7hjteJuqPUuLx/axcfsJ+AXNhhK+tExvVtSwnP
 3ymQ==
X-Gm-Message-State: AOAM533ta+qU3UrFhELzDp4AAviXfhsse4qw5bS4F8jbwHmYcCODcoKf
 MWCcmDTsSI2u73R5Gug+wmk=
X-Google-Smtp-Source: ABdhPJzNsXd0xn+ZYk/hKsrkSpo+O4LewrB8Z7g153yCkw6fE4ToY+F0tCUlfnCAi8qU3Z4xnS7gPA==
X-Received: by 2002:adf:f6cc:: with SMTP id y12mr1609495wrp.178.1627028556944; 
 Fri, 23 Jul 2021 01:22:36 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:a0d7:cc1c:9090:5782?
 ([2a02:908:1252:fb60:a0d7:cc1c:9090:5782])
 by smtp.gmail.com with ESMTPSA id s24sm34555606wra.33.2021.07.23.01.22.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 23 Jul 2021 01:22:36 -0700 (PDT)
To: =?UTF-8?Q?Michel_D=c3=a4nzer?= <michel@daenzer.net>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
References: <20210723075857.4065-1-michel@daenzer.net>
 <f5f37693-bfe2-e52f-172b-00f4aa94dbd9@amd.com>
 <4cf94f59-f953-f5d7-9901-cfe5fd63bfbc@daenzer.net>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <884050b3-5e7d-c00b-5467-290cfc57e0ea@gmail.com>
Date: Fri, 23 Jul 2021 10:22:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <4cf94f59-f953-f5d7-9901-cfe5fd63bfbc@daenzer.net>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH] dma-buf/poll: Get a file reference for
 outstanding fence callbacks
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
Cc: linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

CgpBbSAyMy4wNy4yMSB1bSAxMDoxOSBzY2hyaWViIE1pY2hlbCBEw6RuemVyOgo+IE9uIDIwMjEt
MDctMjMgMTA6MDQgYS5tLiwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToKPj4gQW0gMjMuMDcuMjEg
dW0gMDk6NTggc2NocmllYiBNaWNoZWwgRMOkbnplcjoKPj4+IEZyb206IE1pY2hlbCBEw6RuemVy
IDxtZGFlbnplckByZWRoYXQuY29tPgo+Pj4KPj4+IFRoaXMgbWFrZXMgc3VyZSB3ZSBkb24ndCBo
aXQgdGhlCj4+Pgo+Pj4gIMKgwqDCoMKgQlVHX09OKGRtYWJ1Zi0+Y2JfaW4uYWN0aXZlIHx8IGRt
YWJ1Zi0+Y2Jfb3V0LmFjdGl2ZSk7Cj4+Pgo+Pj4gaW4gZG1hX2J1Zl9yZWxlYXNlLCB3aGljaCBj
b3VsZCBiZSB0cmlnZ2VyZWQgYnkgdXNlciBzcGFjZSBjbG9zaW5nIHRoZQo+Pj4gZG1hLWJ1ZiBm
aWxlIGRlc2NyaXB0aW9uIHdoaWxlIHRoZXJlIGFyZSBvdXRzdGFuZGluZyBmZW5jZSBjYWxsYmFj
a3MKPj4+IGZyb20gZG1hX2J1Zl9wb2xsLgo+PiBJIHdhcyBhbHNvIHdvbmRlcmluZyB0aGUgc2Ft
ZSB0aGluZyB3aGlsZSB3b3JraW5nIG9uIHRoaXMsIGJ1dCB0aGVuIHRob3VnaHQgdGhhdCB0aGUg
cG9sbCBpbnRlcmZhY2Ugd291bGQgdGFrZSBjYXJlIG9mIHRoaXMuCj4gSSB3YXMgYWJsZSB0byBo
aXQgdGhlIEJVR19PTiB3aXRoIGh0dHBzOi8vZ2l0bGFiLmdub21lLm9yZy9HTk9NRS9tdXR0ZXIv
LS9tZXJnZV9yZXF1ZXN0cy8xODgwIC4KPgo+Cj4+PiBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9y
Zwo+Pj4gU2lnbmVkLW9mZi1ieTogTWljaGVsIETDpG56ZXIgPG1kYWVuemVyQHJlZGhhdC5jb20+
Cj4+PiAtLS0KPj4+ICDCoCBkcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIHwgMTggKysrKysrKysr
KysrLS0tLS0tCj4+PiAgwqAgMSBmaWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDYgZGVs
ZXRpb25zKC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMg
Yi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jCj4+PiBpbmRleCA2YzUyMGM5YmQ5M2MuLmVjMjU0
OThhOTcxZiAxMDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMKPj4+ICsr
KyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMKPj4+IEBAIC02NSwxMiArNjUsOSBAQCBzdGF0
aWMgdm9pZCBkbWFfYnVmX3JlbGVhc2Uoc3RydWN0IGRlbnRyeSAqZGVudHJ5KQo+Pj4gIMKgwqDC
oMKgwqAgQlVHX09OKGRtYWJ1Zi0+dm1hcHBpbmdfY291bnRlcik7Cj4+PiAgwqAgwqDCoMKgwqDC
oCAvKgo+Pj4gLcKgwqDCoMKgICogQW55IGZlbmNlcyB0aGF0IGEgZG1hLWJ1ZiBwb2xsIGNhbiB3
YWl0IG9uIHNob3VsZCBiZSBzaWduYWxlZAo+Pj4gLcKgwqDCoMKgICogYmVmb3JlIHJlbGVhc2lu
ZyBkbWEtYnVmLiBUaGlzIGlzIHRoZSByZXNwb25zaWJpbGl0eSBvZiBlYWNoCj4+PiAtwqDCoMKg
wqAgKiBkcml2ZXIgdGhhdCB1c2VzIHRoZSByZXNlcnZhdGlvbiBvYmplY3RzLgo+Pj4gLcKgwqDC
oMKgICoKPj4+IC3CoMKgwqDCoCAqIElmIHlvdSBoaXQgdGhpcyBCVUcoKSBpdCBtZWFucyBzb21l
b25lIGRyb3BwZWQgdGhlaXIgcmVmIHRvIHRoZQo+Pj4gLcKgwqDCoMKgICogZG1hLWJ1ZiB3aGls
ZSBzdGlsbCBoYXZpbmcgcGVuZGluZyBvcGVyYXRpb24gdG8gdGhlIGJ1ZmZlci4KPj4+ICvCoMKg
wqDCoCAqIElmIHlvdSBoaXQgdGhpcyBCVUcoKSBpdCBjb3VsZCBtZWFuOgo+Pj4gK8KgwqDCoMKg
ICogKiBUaGVyZSdzIGEgZmlsZSByZWZlcmVuY2UgaW1iYWxhbmNlIGluIGRtYV9idWZfcG9sbCAv
IGRtYV9idWZfcG9sbF9jYiBvciBzb21ld2hlcmUgZWxzZQo+Pj4gK8KgwqDCoMKgICogKiBkbWFi
dWYtPmNiX2luL291dC5hY3RpdmUgYXJlIG5vbi0wIGRlc3BpdGUgbm8gcGVuZGluZyBmZW5jZSBj
YWxsYmFjawo+Pj4gIMKgwqDCoMKgwqDCoCAqLwo+Pj4gIMKgwqDCoMKgwqAgQlVHX09OKGRtYWJ1
Zi0+Y2JfaW4uYWN0aXZlIHx8IGRtYWJ1Zi0+Y2Jfb3V0LmFjdGl2ZSk7Cj4+PiAgwqAgQEAgLTE5
Niw2ICsxOTMsNyBAQCBzdGF0aWMgbG9mZl90IGRtYV9idWZfbGxzZWVrKHN0cnVjdCBmaWxlICpm
aWxlLCBsb2ZmX3Qgb2Zmc2V0LCBpbnQgd2hlbmNlKQo+Pj4gIMKgIHN0YXRpYyB2b2lkIGRtYV9i
dWZfcG9sbF9jYihzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwgc3RydWN0IGRtYV9mZW5jZV9jYiAq
Y2IpCj4+PiAgwqAgewo+Pj4gIMKgwqDCoMKgwqAgc3RydWN0IGRtYV9idWZfcG9sbF9jYl90ICpk
Y2IgPSAoc3RydWN0IGRtYV9idWZfcG9sbF9jYl90ICopY2I7Cj4+PiArwqDCoMKgIHN0cnVjdCBk
bWFfYnVmICpkbWFidWYgPSBjb250YWluZXJfb2YoZGNiLT5wb2xsLCBzdHJ1Y3QgZG1hX2J1Ziwg
cG9sbCk7Cj4+PiAgwqDCoMKgwqDCoCB1bnNpZ25lZCBsb25nIGZsYWdzOwo+Pj4gIMKgIMKgwqDC
oMKgwqAgc3Bpbl9sb2NrX2lycXNhdmUoJmRjYi0+cG9sbC0+bG9jaywgZmxhZ3MpOwo+Pj4gQEAg
LTIwMyw2ICsyMDEsOCBAQCBzdGF0aWMgdm9pZCBkbWFfYnVmX3BvbGxfY2Ioc3RydWN0IGRtYV9m
ZW5jZSAqZmVuY2UsIHN0cnVjdCBkbWFfZmVuY2VfY2IgKmNiKQo+Pj4gIMKgwqDCoMKgwqAgZGNi
LT5hY3RpdmUgPSAwOwo+Pj4gIMKgwqDCoMKgwqAgc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmZGNi
LT5wb2xsLT5sb2NrLCBmbGFncyk7Cj4+PiAgwqDCoMKgwqDCoCBkbWFfZmVuY2VfcHV0KGZlbmNl
KTsKPj4+ICvCoMKgwqAgLyogUGFpcmVkIHdpdGggZ2V0X2ZpbGUgaW4gZG1hX2J1Zl9wb2xsICov
Cj4+PiArwqDCoMKgIGZwdXQoZG1hYnVmLT5maWxlKTsKPj4gSXMgY2FsbGluZyBmcHV0KCkgaW4g
aW50ZXJydXB0IGNvbnRleHQgb2s/IElJUkMgdGhhdCBjb3VsZCBwb3RlbnRpYWxseSBzbGVlcC4K
PiBMb29rcyBmaW5lIEFGQUlDVDogSXQgaGFzCj4KPiAJCWlmIChsaWtlbHkoIWluX2ludGVycnVw
dCgpICYmICEodGFzay0+ZmxhZ3MgJiBQRl9LVEhSRUFEKSkpIHsKPgo+IGFuZCBhcyBhIGZhbGxi
YWNrIGZvciB0aGF0LCBpdCBhZGRzIHRoZSBmaWxlIHRvIGEgbG9jay1sZXNzIGRlbGF5ZWRfZnB1
dF9saXN0IHdoaWNoIGlzIHByb2Nlc3NlZCBieSBhIHdvcmtxdWV1ZS4KCkFoLCB5ZXMgdGhhdCBt
YWtlcyBzZW5zZS4KCkZlbGwgZnJlZSB0byBhZGQgUmV2aWV3ZWQtYnk6IENocmlzdGlhbiBLw7Zu
aWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KClRoYW5rcywKQ2hyaXN0aWFuLgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1h
aWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5s
aW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
