Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 407202AE164
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Nov 2020 22:13:34 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 785D0665EF
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Nov 2020 21:13:33 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 65308665F2; Tue, 10 Nov 2020 21:13:33 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 90511665CF;
	Tue, 10 Nov 2020 21:13:00 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 69C4960F1E
 for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Nov 2020 21:12:58 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 478C5665CF; Tue, 10 Nov 2020 21:12:58 +0000 (UTC)
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by lists.linaro.org (Postfix) with ESMTPS id D91CD60F1E
 for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Nov 2020 21:12:56 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id 23so14271054wrc.8
 for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Nov 2020 13:12:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=+1qiY4oDPj4QZfL6qghq1haCSVhCeVDAqKZGD+qkbx8=;
 b=QmRbntVx+kd2r4U6oV2y8gQEaXQahdAW0WruN7upRVtc1N8YFsEKs8HvmK8iDa3Ijy
 Q/+4ME2OcPTVhpZcdQfFLjiPBRnlMNbHBIKYCUuP0aP0Vfva7IorYLML/hhcRSy0wvzr
 G0TLhwWNqO2CsImQMMi/44JbfgvhIXb5N2IwHLpJ8A8NGooIj1QXBP5hAgkoXiHnxY+n
 eZageBvE8PBM9jmqmk/dBNWNkR1dQp5X1a3O9+V/bNwJW+6t9zjc2k7j7E6g1QnEuVRP
 R3T83JVAvvK9K+jv/DZYdrtuQ9OyE1Xhnb1LRxi7bZyuZmUm/teWVJSt1OX2r42thhPR
 l35g==
X-Gm-Message-State: AOAM530twsYIn2uNRT50xtvaIw2q1bronDikXMQvidafwCxxT7fC01ew
 Mv8DmcWWrfMKT5qKxUbu4WkUACruzU4+CAWjHvU=
X-Google-Smtp-Source: ABdhPJwSPi/XzPxpWkWfc667bn3+KfiQNfQ/1d5NUGazQbQobwLyMKIUuc+OEeitOW6AtDYIuvFhcWe6S0QSmLXW+0I=
X-Received: by 2002:adf:e9c9:: with SMTP id l9mr27585519wrn.124.1605042776045; 
 Tue, 10 Nov 2020 13:12:56 -0800 (PST)
MIME-Version: 1.0
References: <20201105144517.1826692-1-lee.jones@linaro.org>
 <20201105144517.1826692-7-lee.jones@linaro.org>
In-Reply-To: <20201105144517.1826692-7-lee.jones@linaro.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Tue, 10 Nov 2020 16:12:44 -0500
Message-ID: <CADnq5_Nv_5dbeeBfWN_Kfzt5ZJUDQR9icH_QL10o5v6AW=9qVw@mail.gmail.com>
To: Lee Jones <lee.jones@linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: David Airlie <airlied@linux.ie>, LKML <linux-kernel@vger.kernel.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 06/19] gpu: drm: scheduler: sched_main:
 Provide missing description for 'sched' paramter
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T24gVGh1LCBOb3YgNSwgMjAyMCBhdCA5OjUyIEFNIExlZSBKb25lcyA8bGVlLmpvbmVzQGxpbmFy
by5vcmc+IHdyb3RlOgo+Cj4gRml4ZXMgdGhlIGZvbGxvd2luZyBXPTEga2VybmVsIGJ1aWxkIHdh
cm5pbmcocyk6Cj4KPiAgZHJpdmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9tYWluLmM6NzQ6
IHdhcm5pbmc6IEZ1bmN0aW9uIHBhcmFtZXRlciBvciBtZW1iZXIgJ3NjaGVkJyBub3QgZGVzY3Jp
YmVkIGluICdkcm1fc2NoZWRfcnFfaW5pdCcKPgo+IENjOiBEYXZpZCBBaXJsaWUgPGFpcmxpZWRA
bGludXguaWU+Cj4gQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4KPiBDYzogU3Vt
aXQgU2Vtd2FsIDxzdW1pdC5zZW13YWxAbGluYXJvLm9yZz4KPiBDYzogIkNocmlzdGlhbiBLw7Zu
aWciIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4gQ2M6IGRyaS1kZXZlbEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKPiBDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnCj4gQ2M6IGxpbmFy
by1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwo+IFNpZ25lZC1vZmYtYnk6IExlZSBKb25lcyA8bGVl
LmpvbmVzQGxpbmFyby5vcmc+CgpBcHBsaWVkLiAgVGhhbmtzIQoKQWxleAoKPiAtLS0KPiAgZHJp
dmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9tYWluLmMgfCAxICsKPiAgMSBmaWxlIGNoYW5n
ZWQsIDEgaW5zZXJ0aW9uKCspCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3NjaGVk
dWxlci9zY2hlZF9tYWluLmMgYi9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX21haW4u
Ywo+IGluZGV4IDlhMGQ3N2E2ODAxODAuLmRhMjRjNGU4YjlmYjMgMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL3NjaGVkdWxlci9zY2hlZF9tYWluLmMKPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vc2NoZWR1bGVyL3NjaGVkX21haW4uYwo+IEBAIC02NSw2ICs2NSw3IEBAIHN0YXRpYyB2b2lk
IGRybV9zY2hlZF9wcm9jZXNzX2pvYihzdHJ1Y3QgZG1hX2ZlbmNlICpmLCBzdHJ1Y3QgZG1hX2Zl
bmNlX2NiICpjYik7Cj4gIC8qKgo+ICAgKiBkcm1fc2NoZWRfcnFfaW5pdCAtIGluaXRpYWxpemUg
YSBnaXZlbiBydW4gcXVldWUgc3RydWN0Cj4gICAqCj4gKyAqIEBzY2hlZDogc2NoZWR1bGVyIGlu
c3RhbmNlIHRvIGFzc29jaWF0ZSB3aXRoIHRoaXMgcnVuIHF1ZXVlCj4gICAqIEBycTogc2NoZWR1
bGVyIHJ1biBxdWV1ZQo+ICAgKgo+ICAgKiBJbml0aWFsaXplcyBhIHNjaGVkdWxlciBydW5xdWV1
ZS4KPiAtLQo+IDIuMjUuMQo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPiBkcmktZGV2ZWwgbWFpbGluZyBsaXN0Cj4gZHJpLWRldmVsQGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vZHJpLWRldmVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8t
bW0tc2lnCg==
