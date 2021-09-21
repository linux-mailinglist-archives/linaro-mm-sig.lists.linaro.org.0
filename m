Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 530F9413869
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Sep 2021 19:36:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CB57561653
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Sep 2021 17:36:04 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id AB5C6617B3; Tue, 21 Sep 2021 17:36:04 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B3E4F61236;
	Tue, 21 Sep 2021 17:36:00 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 62EEC611B2
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Sep 2021 17:35:58 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 60C0461236; Tue, 21 Sep 2021 17:35:58 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
 [209.85.221.49])
 by lists.linaro.org (Postfix) with ESMTPS id 58B1E611B2
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Sep 2021 17:35:56 +0000 (UTC)
Received: by mail-wr1-f49.google.com with SMTP id w17so33478787wrv.10
 for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Sep 2021 10:35:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=pjqKqzaBO9YyQO367dYMB1dDo+YYIgVSgR/HrzoDvi8=;
 b=VAWOp3vu7I9NZWj+CDh0Uq6VZIkinG4zw2HMbEZHawTH16JcaVUQsPRjvliVWnXV3+
 hnugVB9+23rO1xEwveQtykl4KJALqNGkJFBqrDEe0xeS5LDIqC1DM+4Tnsmw9a3XWfFx
 Kp9CWeis9kXuzWbVGhlIpATvazFfzDTzp5bEt0Bl08GNEJdSepDebs2ykaJJTRaoq8Ra
 pfZgcun+poAF6cHb3uQ15ZAhvEs3sqUptn/HTzwM5Roxr1hKR5NYYz1xOYZiViJw7K75
 CB23B33OiBOu7rmPnGhLvCwbSAl6FWxMQjR5WQeZ528P6+WyjkhbCLF4Ju44R40QSwxZ
 4itA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=pjqKqzaBO9YyQO367dYMB1dDo+YYIgVSgR/HrzoDvi8=;
 b=Yw/pvC27kdL6ONbnRkfN7654rUUk378CL86bUaH0OnbBpPxQ4ndPi+GEvPSf3F2W5j
 rkkXlFA+h/Xq2OROm+jVFkkPz3kPJzRk6nfKj1ZzL5WXyT2ijgujviO1RLePFQvamb8b
 b0TEd0BuWhLIzR4b2aLc7iLvqMAhYBLoLSbaIOBgX9a198wixbIgXa+CBUVjauqf5hUV
 51g9bYLHw2O8jW8BeJh/BITA6+U721JzslsFEWqxxrzZzzQsxGo9owaMx7wMemMzaT0D
 2uX7CAI5f1NqlvaKLZxh6yCjtyC4FjHR+VIUJTuIVo26fhM5TEdDabE6jB2mP+I6ZLEO
 1rBA==
X-Gm-Message-State: AOAM531PBq6Hgboukr5bbirZqkrM7kYG8cY1nOisE02M6MEjKMaidpmK
 Hho2a2Rjc+YnTa3ddnqOKA5qi0gEQX8=
X-Google-Smtp-Source: ABdhPJwJWQCDHc22GOt0rL6e5r9tsPU6MOyCstVOccOTTCM2dqPsA7Oo/iRnbKWpSF53M64HeTWEwA==
X-Received: by 2002:a1c:7201:: with SMTP id n1mr5964375wmc.19.1632245755419;
 Tue, 21 Sep 2021 10:35:55 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:e90f:ea29:b3d5:61cf?
 ([2a02:908:1252:fb60:e90f:ea29:b3d5:61cf])
 by smtp.gmail.com with ESMTPSA id g13sm3359161wmh.20.2021.09.21.10.35.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 21 Sep 2021 10:35:54 -0700 (PDT)
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
References: <20210917123513.1106-1-christian.koenig@amd.com>
 <20210917123513.1106-17-christian.koenig@amd.com>
 <e0954bdd-2183-f662-8192-c44f931c602b@linux.intel.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <e66dd0dc-02a6-7437-ab98-dff4e8ff8de3@gmail.com>
Date: Tue, 21 Sep 2021 19:35:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <e0954bdd-2183-f662-8192-c44f931c602b@linux.intel.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [Intel-gfx] [PATCH 16/26] drm/i915: use new
 iterator in i915_gem_object_wait_reservation v2
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
Cc: daniel@ffwll.ch
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMjAuMDkuMjEgdW0gMTI6MDAgc2NocmllYiBUdnJ0a28gVXJzdWxpbjoKPgo+IE9uIDE3LzA5
LzIwMjEgMTM6MzUsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+IFNpbXBsaWZ5aW5nIHRoZSBj
b2RlIGEgYml0Lgo+Pgo+PiB2MjogYWRkIG1pc3NpbmcgcmN1IHJlYWQgdW5sb2NrLgo+Pgo+PiBT
aWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+
Cj4+IC0tLQo+PiDCoCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fd2FpdC5jIHwg
NTcgKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tCj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNl
cnRpb25zKCspLCA0MyBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV93YWl0LmMgCj4+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX3dhaXQuYwo+PiBpbmRleCBmOTA5YWFhMDlkOWMuLmU0MTZjZjUyODYzNSAx
MDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3dhaXQuYwo+
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fd2FpdC5jCj4+IEBAIC0z
Nyw1NSArMzcsMjYgQEAgaTkxNV9nZW1fb2JqZWN0X3dhaXRfcmVzZXJ2YXRpb24oc3RydWN0IGRt
YV9yZXN2IAo+PiAqcmVzdiwKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHVuc2lnbmVkIGludCBmbGFncywKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIGxvbmcgdGltZW91dCkKPj4gwqAgewo+PiAtwqDCoMKgIHN0cnVjdCBkbWFfZmVuY2UgKmV4
Y2w7Cj4+IC3CoMKgwqAgYm9vbCBwcnVuZV9mZW5jZXMgPSBmYWxzZTsKPj4gLQo+PiAtwqDCoMKg
IGlmIChmbGFncyAmIEk5MTVfV0FJVF9BTEwpIHsKPj4gLcKgwqDCoMKgwqDCoMKgIHN0cnVjdCBk
bWFfZmVuY2UgKipzaGFyZWQ7Cj4+IC3CoMKgwqDCoMKgwqDCoCB1bnNpZ25lZCBpbnQgY291bnQs
IGk7Cj4+IC3CoMKgwqDCoMKgwqDCoCBpbnQgcmV0Owo+PiAtCj4+IC3CoMKgwqDCoMKgwqDCoCBy
ZXQgPSBkbWFfcmVzdl9nZXRfZmVuY2VzKHJlc3YsICZleGNsLCAmY291bnQsICZzaGFyZWQpOwo+
PiAtwqDCoMKgwqDCoMKgwqAgaWYgKHJldCkKPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0
dXJuIHJldDsKPj4gLQo+PiAtwqDCoMKgwqDCoMKgwqAgZm9yIChpID0gMDsgaSA8IGNvdW50OyBp
KyspIHsKPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdGltZW91dCA9IGk5MTVfZ2VtX29iamVj
dF93YWl0X2ZlbmNlKHNoYXJlZFtpXSwKPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZmxhZ3MsIHRpbWVvdXQpOwo+PiAt
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAodGltZW91dCA8IDApCj4+IC3CoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgYnJlYWs7Cj4+IC0KPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
ZG1hX2ZlbmNlX3B1dChzaGFyZWRbaV0pOwo+PiAtwqDCoMKgwqDCoMKgwqAgfQo+PiAtCj4+IC3C
oMKgwqDCoMKgwqDCoCBmb3IgKDsgaSA8IGNvdW50OyBpKyspCj4+IC3CoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIGRtYV9mZW5jZV9wdXQoc2hhcmVkW2ldKTsKPj4gLcKgwqDCoMKgwqDCoMKgIGtmcmVl
KHNoYXJlZCk7Cj4+IC0KPj4gLcKgwqDCoMKgwqDCoMKgIC8qCj4+IC3CoMKgwqDCoMKgwqDCoMKg
ICogSWYgYm90aCBzaGFyZWQgZmVuY2VzIGFuZCBhbiBleGNsdXNpdmUgZmVuY2UgZXhpc3QsCj4+
IC3CoMKgwqDCoMKgwqDCoMKgICogdGhlbiBieSBjb25zdHJ1Y3Rpb24gdGhlIHNoYXJlZCBmZW5j
ZXMgbXVzdCBiZSBsYXRlcgo+PiAtwqDCoMKgwqDCoMKgwqDCoCAqIHRoYW4gdGhlIGV4Y2x1c2l2
ZSBmZW5jZS4gSWYgd2Ugc3VjY2Vzc2Z1bGx5IHdhaXQgZm9yCj4+IC3CoMKgwqDCoMKgwqDCoMKg
ICogYWxsIHRoZSBzaGFyZWQgZmVuY2VzLCB3ZSBrbm93IHRoYXQgdGhlIGV4Y2x1c2l2ZSBmZW5j
ZQo+PiAtwqDCoMKgwqDCoMKgwqDCoCAqIG11c3QgYWxsIGJlIHNpZ25hbGVkLiBJZiBhbGwgdGhl
IHNoYXJlZCBmZW5jZXMgYXJlCj4+IC3CoMKgwqDCoMKgwqDCoMKgICogc2lnbmFsZWQsIHdlIGNh
biBwcnVuZSB0aGUgYXJyYXkgYW5kIHJlY292ZXIgdGhlCj4+IC3CoMKgwqDCoMKgwqDCoMKgICog
ZmxvYXRpbmcgcmVmZXJlbmNlcyBvbiB0aGUgZmVuY2VzL3JlcXVlc3RzLgo+PiAtwqDCoMKgwqDC
oMKgwqDCoCAqLwo+PiAtwqDCoMKgwqDCoMKgwqAgcHJ1bmVfZmVuY2VzID0gY291bnQgJiYgdGlt
ZW91dCA+PSAwOwo+PiAtwqDCoMKgIH0gZWxzZSB7Cj4+IC3CoMKgwqDCoMKgwqDCoCBleGNsID0g
ZG1hX3Jlc3ZfZ2V0X2V4Y2xfdW5sb2NrZWQocmVzdik7Cj4+ICvCoMKgwqAgc3RydWN0IGRtYV9y
ZXN2X2l0ZXIgY3Vyc29yOwo+PiArwqDCoMKgIHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOwo+PiAr
Cj4+ICvCoMKgwqAgcmN1X3JlYWRfbG9jaygpOwo+PiArwqDCoMKgIGRtYV9yZXN2X2l0ZXJfYmVn
aW4oJmN1cnNvciwgcmVzdiwgZmxhZ3MgJiBJOTE1X1dBSVRfQUxMKTsKPj4gK8KgwqDCoCBkbWFf
cmVzdl9mb3JfZWFjaF9mZW5jZV91bmxvY2tlZCgmY3Vyc29yLCBmZW5jZSkgewo+PiArwqDCoMKg
wqDCoMKgwqAgcmN1X3JlYWRfdW5sb2NrKCk7Cj4+ICvCoMKgwqDCoMKgwqDCoCB0aW1lb3V0ID0g
aTkxNV9nZW1fb2JqZWN0X3dhaXRfZmVuY2UoZmVuY2UsIGZsYWdzLCB0aW1lb3V0KTsKPgo+IENv
bnZlcnRpbmcgdGhpcyBvbmUgY291bGQgYmUgcHJvYmxlbWF0aWMuIEl0J3MgdGhlIHdhaXQgaW9j
dGwgd2hpY2ggCj4gdXNlZCB0byBncmFiIGFuIGF0b21pYyBzbmFwc2hvdCBhbmQgd2FpdCBmb3Ig
dGhhdCByZW5kZXJpbmcgdG8gCj4gY29tcGxldGUuIFdpdGggdGhpcyBjaGFuZ2UgSSB0aGluayBp
dCBoYXMgdGhlIHBvdGVudGlhbCB0byBydW4gZm9yZXZlciAKPiBrZWVwcyBjYXRjaGluZyBuZXcg
YWN0aXZpdHkgYWdhaW5zdCB0aGUgc2FtZSBvYmplY3QuCj4KPiBJIGFtIG5vdCBzdXJlIHdoZXRo
ZXIgb3Igbm90IHRoZSBkaWZmZXJlbmNlIGlzIHJlbGV2YW50IGZvciBob3cgCj4gdXNlcnNwYWNl
IHVzZXMgaXQgYnV0IEkgdGhpbmsgbmVlZHMgZGlzY3Vzc2lvbi4KCkl0IHdhcyB5ZWFycyBhZ28s
IGJ1dCBJSVJDIHdlIGhhZCB0aGUgc2FtZSBkaXNjdXNzaW9uIGZvciB0aGUgCmRtYV9yZXN2X3dh
aXRfdGltZW91dCgpIGZ1bmN0aW9uIGFuZCB0aGUgcmVzdWx0IHdhcyB0aGF0IHRoaXMgaXMgbm90
IGEgCnZhbGlkIHVzZSBjYXNlIGFuZCB3YWl0aW5nIGZvcmV2ZXIgaWYgeW91IHNlZSBuZXcgd29y
ayBvdmVyIGFuZCBvdmVyIAphZ2FpbiBpcyBhIHZhbGlkIHJlc3VsdC4KCkxldCBtZSBkb3VibGUg
Y2hlY2sgdGhlIGhpc3Rvcnkgb2YgdGhpcyBjb2RlIGhlcmUgYXMgd2VsbC4KCj4gSG0gYWN0dWFs
bHkgdGhlcmUgYXJlIGludGVybmFsIGNhbGxlcnMgYXMgd2VsbCwgYW5kIGF0IGxlYXN0IHNvbWUg
b2YgCj4gdGhvc2UgaGF2ZSB0aGUgb2JqZWN0IGxvY2tlZC4gV291bGQgYSB3aWRlciByZWZhY3Rv
cmluZyB0byBzZXBhcmF0ZSAKPiB0aG9zZSBpbnRvIGJ1Y2tldHMgKGxvY2tlZCB2cyB1bmxvY2tl
ZCkgbWFrZSBzZW5zZT8KClllcyBkZWZpbml0ZWx5LgoKUmVnYXJkcywKQ2hyaXN0aWFuLgoKPgo+
IFJlZ2FyZHMsCj4KPiBUdnJ0a28KPgo+Cj4+ICvCoMKgwqDCoMKgwqDCoCByY3VfcmVhZF9sb2Nr
KCk7Cj4+ICvCoMKgwqDCoMKgwqDCoCBpZiAodGltZW91dCA8IDApCj4+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIGJyZWFrOwo+PiDCoMKgwqDCoMKgIH0KPj4gLQo+PiAtwqDCoMKgIGlmIChleGNs
ICYmIHRpbWVvdXQgPj0gMCkKPj4gLcKgwqDCoMKgwqDCoMKgIHRpbWVvdXQgPSBpOTE1X2dlbV9v
YmplY3Rfd2FpdF9mZW5jZShleGNsLCBmbGFncywgdGltZW91dCk7Cj4+IC0KPj4gLcKgwqDCoCBk
bWFfZmVuY2VfcHV0KGV4Y2wpOwo+PiArwqDCoMKgIGRtYV9yZXN2X2l0ZXJfZW5kKCZjdXJzb3Ip
Owo+PiArwqDCoMKgIHJjdV9yZWFkX3VubG9jaygpOwo+PiDCoCDCoMKgwqDCoMKgIC8qCj4+IMKg
wqDCoMKgwqDCoCAqIE9wcG9ydHVuaXN0aWNhbGx5IHBydW5lIHRoZSBmZW5jZXMgaWZmIHdlIGtu
b3cgdGhleSBoYXZlIAo+PiAqYWxsKiBiZWVuCj4+IMKgwqDCoMKgwqDCoCAqIHNpZ25hbGVkLgo+
PiDCoMKgwqDCoMKgwqAgKi8KPj4gLcKgwqDCoCBpZiAocHJ1bmVfZmVuY2VzKQo+PiArwqDCoMKg
IGlmICh0aW1lb3V0ID4gMCkKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIGRtYV9yZXN2X3BydW5lKHJl
c3YpOwo+PiDCoCDCoMKgwqDCoMKgIHJldHVybiB0aW1lb3V0Owo+PgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
