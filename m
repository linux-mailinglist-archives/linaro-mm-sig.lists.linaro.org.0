Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CEC11007BE
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 Nov 2019 15:56:33 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AFAF261754
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 Nov 2019 14:56:32 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A1D346177D; Mon, 18 Nov 2019 14:56:32 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9ABFC61772;
	Mon, 18 Nov 2019 14:56:03 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 3DAA960BD9
 for <linaro-mm-sig@lists.linaro.org>; Mon, 18 Nov 2019 14:56:01 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 2121461772; Mon, 18 Nov 2019 14:56:01 +0000 (UTC)
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [205.139.110.61])
 by lists.linaro.org (Postfix) with ESMTPS id 1B9CA60BD9
 for <linaro-mm-sig@lists.linaro.org>; Mon, 18 Nov 2019 14:56:00 +0000 (UTC)
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-430-BXItm-16OL2yca7u8N9nTw-1; Mon, 18 Nov 2019 09:55:58 -0500
Received: by mail-qk1-f199.google.com with SMTP id p68so11644429qkf.9
 for <linaro-mm-sig@lists.linaro.org>; Mon, 18 Nov 2019 06:55:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=9XWpSHAGS/LkOq4pxWl24kYZw1xJNm2K16IYOEgWWcU=;
 b=CvJ8FsDx/ZWSPmkKuNUwN2VzXn3kGqGoM9TC/w2fO9eL3xgeCks9D54rRKkHSxxVDZ
 dih6Gw+FadBwSrwZ5UxQclSEMumUqAe+NulOE6HXJi4ug+J5NWLmWj+T6PCbXBAFztRq
 YbVnNrHn96J2WWz8ST+yuBiJHLIQcQA08zxiApbmaJUA4gC76LpTwHt/nTQVtmqd5MH8
 DSvUUuAqSGjQCOhEbffZ7sC6Af514a/CeMnW1/OPqB7lUSg3NVK5J2mBMCRnn6tKHLtY
 21tyqulgiG7q1QisBokrJ6i+UvKmGSUCBd0/joMUTUJWRKilmMzNaVVtPfAsMayi8goH
 BQuw==
X-Gm-Message-State: APjAAAX76rQbrUKXD/EiCSwAvjYHYDxqiaTFMcjps5159BigVNjvGo2t
 aqc5QpvgowEkQPWyn05aiaSWAq5xWsbZgZ+I94sQzKTUWlUOmU1o4zCvsyNBbdje2rqOODMKPga
 ZzCQ4Sh8TPAiFih6Cm8J2R/HD6MQ=
X-Received: by 2002:aed:22b7:: with SMTP id p52mr27346902qtc.289.1574088957756; 
 Mon, 18 Nov 2019 06:55:57 -0800 (PST)
X-Google-Smtp-Source: APXvYqwQ2zLtsNPjhGQw+qC/tNWB8pkCVzPjy7p8sJe/UFhjlSYcxa7agBgFfSggwdfEjfuZQ4Zybw==
X-Received: by 2002:aed:22b7:: with SMTP id p52mr27346863qtc.289.1574088957498; 
 Mon, 18 Nov 2019 06:55:57 -0800 (PST)
Received: from [192.168.1.157] (pool-96-235-39-235.pitbpa.fios.verizon.net.
 [96.235.39.235])
 by smtp.gmail.com with ESMTPSA id a2sm8530549qkl.71.2019.11.18.06.55.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 18 Nov 2019 06:55:56 -0800 (PST)
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 DRI Development <dri-devel@lists.freedesktop.org>
References: <20191118103536.17675-1-daniel.vetter@ffwll.ch>
 <20191118103536.17675-5-daniel.vetter@ffwll.ch>
From: Laura Abbott <labbott@redhat.com>
Message-ID: <02ba16cd-ec38-d503-ca8a-c848f433f6b8@redhat.com>
Date: Mon, 18 Nov 2019 09:55:55 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191118103536.17675-5-daniel.vetter@ffwll.ch>
Content-Language: en-US
X-MC-Unique: BXItm-16OL2yca7u8N9nTw-1
X-Mimecast-Spam-Score: 0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: devel@driverdev.osuosl.org, Daniel Vetter <daniel.vetter@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 linaro-mm-sig@lists.linaro.org
Subject: Re: [Linaro-mm-sig] [PATCH 04/15] staging/android/ion: delete
 dma_buf->kmap/unmap implemenation
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T24gMTEvMTgvMTkgNTozNSBBTSwgRGFuaWVsIFZldHRlciB3cm90ZToKPiBUaGVyZSdzIG5vIGNh
bGxlcnMgaW4tdHJlZSBhbnltb3JlLgo+IAo+IEZvciBtZXJnaW5nIHByb2JhYmx5IGJlc3QgdG8g
c3R1ZmYgdGhpcyBpbnRvIGRybS1taXNjLCBzaW5jZSB0aGF0J3MKPiB3aGVyZSB0aGUgZG1hLWJ1
ZiBoZWFwcyB3aWxsIGxhbmQgdG9vLiBBbmQgdGhlIHJlc3VsdGluZyBjb25mbGljdAo+IGhvcGVm
dWxseSBlbnN1cmVzIHRoYXQgZG1hLWJ1ZiBoZWFwcyB3b250IGhhdmUgYSBuZXcgLT5rbWFwL3Vu
bWFwCj4gaW1wbGVtZW5hdGlvbi4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxk
YW5pZWwudmV0dGVyQGludGVsLmNvbT4KPiBDYzogTGF1cmEgQWJib3R0IDxsYWJib3R0QHJlZGhh
dC5jb20+Cj4gQ2M6IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+Cj4gQ2M6
IGRldmVsQGRyaXZlcmRldi5vc3Vvc2wub3JnCj4gQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwo+IC0tLQo+ICAgZHJpdmVycy9zdGFnaW5nL2FuZHJvaWQvaW9uL2lvbi5jIHwgMTQg
LS0tLS0tLS0tLS0tLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxNCBkZWxldGlvbnMoLSkKPiAKPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL2FuZHJvaWQvaW9uL2lvbi5jIGIvZHJpdmVycy9z
dGFnaW5nL2FuZHJvaWQvaW9uL2lvbi5jCj4gaW5kZXggZTZiMWNhMTQxYjkzLi5iYjRlZGVkYzEx
NTAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9zdGFnaW5nL2FuZHJvaWQvaW9uL2lvbi5jCj4gKysr
IGIvZHJpdmVycy9zdGFnaW5nL2FuZHJvaWQvaW9uL2lvbi5jCj4gQEAgLTI3NCwxOCArMjc0LDYg
QEAgc3RhdGljIHZvaWQgaW9uX2RtYV9idWZfcmVsZWFzZShzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVm
KQo+ICAgCV9pb25fYnVmZmVyX2Rlc3Ryb3koYnVmZmVyKTsKPiAgIH0KPiAgIAo+IC1zdGF0aWMg
dm9pZCAqaW9uX2RtYV9idWZfa21hcChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLCB1bnNpZ25lZCBs
b25nIG9mZnNldCkKPiAtewo+IC0Jc3RydWN0IGlvbl9idWZmZXIgKmJ1ZmZlciA9IGRtYWJ1Zi0+
cHJpdjsKPiAtCj4gLQlyZXR1cm4gYnVmZmVyLT52YWRkciArIG9mZnNldCAqIFBBR0VfU0laRTsK
PiAtfQo+IC0KPiAtc3RhdGljIHZvaWQgaW9uX2RtYV9idWZfa3VubWFwKHN0cnVjdCBkbWFfYnVm
ICpkbWFidWYsIHVuc2lnbmVkIGxvbmcgb2Zmc2V0LAo+IC0JCQkgICAgICAgdm9pZCAqcHRyKQo+
IC17Cj4gLX0KPiAtCj4gICBzdGF0aWMgaW50IGlvbl9kbWFfYnVmX2JlZ2luX2NwdV9hY2Nlc3Mo
c3RydWN0IGRtYV9idWYgKmRtYWJ1ZiwKPiAgIAkJCQkJZW51bSBkbWFfZGF0YV9kaXJlY3Rpb24g
ZGlyZWN0aW9uKQo+ICAgewo+IEBAIC0zNDksOCArMzM3LDYgQEAgc3RhdGljIGNvbnN0IHN0cnVj
dCBkbWFfYnVmX29wcyBkbWFfYnVmX29wcyA9IHsKPiAgIAkuZGV0YWNoID0gaW9uX2RtYV9idWZf
ZGV0YXRjaCwKPiAgIAkuYmVnaW5fY3B1X2FjY2VzcyA9IGlvbl9kbWFfYnVmX2JlZ2luX2NwdV9h
Y2Nlc3MsCj4gICAJLmVuZF9jcHVfYWNjZXNzID0gaW9uX2RtYV9idWZfZW5kX2NwdV9hY2Nlc3Ms
Cj4gLQkubWFwID0gaW9uX2RtYV9idWZfa21hcCwKPiAtCS51bm1hcCA9IGlvbl9kbWFfYnVmX2t1
bm1hcCwKPiAgIH07Cj4gICAKPiAgIHN0YXRpYyBpbnQgaW9uX2FsbG9jKHNpemVfdCBsZW4sIHVu
c2lnbmVkIGludCBoZWFwX2lkX21hc2ssIHVuc2lnbmVkIGludCBmbGFncykKPiAKCkFja2VkLWJ5
OiBMYXVyYSBBYmJvdHQgPGxhYmJvdHRAcmVkaGF0LmNvbT4KCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0Ckxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
