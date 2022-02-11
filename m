Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 455304B2643
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 11 Feb 2022 13:50:29 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7BC543EEA4
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 11 Feb 2022 12:50:28 +0000 (UTC)
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	by lists.linaro.org (Postfix) with ESMTPS id 3177C3EE59
	for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Feb 2022 12:50:10 +0000 (UTC)
Received: by mail-ed1-f41.google.com with SMTP id cz16so16253794edb.8
        for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Feb 2022 04:50:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=LMx9g6auTGQos2ixTpdRsDRCLAD6z8m8Q1+6qOerHCI=;
        b=qgJnU3sqxhclwPfnmb+HgzygociTO0RxC8EKglaiHSKyZMbSuVuluZtY/pyFUYvtR5
         1Yo/eZPVPNZ5THMj8rpIt24UAIhaWo41PiM+odECNZjmkjbty7rr+oLFWJKALO66lqVO
         GYoGxCDL6/KdQvwZkIIHJ1KHlvxux8KPtmg0MvvxYRAqg6r3SGd8QwqvbHNyIttze0XB
         0rkIMwK49ViBRDPsVh3KBtZQixLBQpfWmLkJkTQnKIQzQftc3W+w2DP8vOX735HNAJx8
         5us83a4HcJgzmNkeSpSj8nldpQ9R5f/R7bgZ31rTyYfl6P/kRc5Zrp/Fdy25nNEDblc8
         LYFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=LMx9g6auTGQos2ixTpdRsDRCLAD6z8m8Q1+6qOerHCI=;
        b=5QmRq+yy55bCo2QKbD6UQ//oJJaisQrrA3auPeo/vG9h0f4EbNUBmEKgnE5I6dNmeB
         0DndQZ2j79cuMGjWwrV5aSL68sJQ5+4JlFIuxkBLmFRiL+PXhFbYJhbbB3XOJwv3O5Ne
         HQbRZmKrv/BoMh33WldtMA0xtsOlEMkfNvM8yFiMG/o6dh25/6PiXRfKrkEFqbvNSZKE
         bTUbhrAjvw6aJK8jrpo4RiW6NuIcVvH1/UOpqdAOM70TQpRykykz2Iw+56QTF6FQWOtU
         ezplpAliSS+urc9iajnm97FSfXJEkC96d6+VZeBGoZS4yvt50WVIStdhQclvTJnZRgyh
         m1KA==
X-Gm-Message-State: AOAM530ZiOks9RyR8tS0r5AB0KXl5TR9N2FgyuTUfBPXYeQjOVt5rDHZ
	Ymlbrc+7i5u7VA3vUq2kBkk=
X-Google-Smtp-Source: ABdhPJzPhjcyY27cxvBqmqE21HqSPw6J7erg8a2VIeX3ntjM4fvthVcPlo0fpx/kGxSnKfg+jjiWKw==
X-Received: by 2002:a05:6402:d75:: with SMTP id ec53mr1745321edb.446.1644583809199;
        Fri, 11 Feb 2022 04:50:09 -0800 (PST)
Received: from able.fritz.box (p57b0bff8.dip0.t-ipconnect.de. [87.176.191.248])
        by smtp.gmail.com with ESMTPSA id w22sm7868604ejc.137.2022.02.11.04.50.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Feb 2022 04:50:08 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: daniel@ffwll.ch,
	sumit.semwal@linaro.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Date: Fri, 11 Feb 2022 13:49:42 +0100
Message-Id: <20220211125003.918447-3-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220211125003.918447-1-christian.koenig@amd.com>
References: <20220211125003.918447-1-christian.koenig@amd.com>
MIME-Version: 1.0
Message-ID-Hash: 25Q6NEPXDN5Y3JLM6HSRLROPGPCCN76L
X-Message-ID-Hash: 25Q6NEPXDN5Y3JLM6HSRLROPGPCCN76L
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 02/23] dma-buf: finally make the dma_resv_list private v2
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/25Q6NEPXDN5Y3JLM6HSRLROPGPCCN76L/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RHJpdmVycyBzaG91bGQgbmV2ZXIgdG91Y2ggdGhpcyBkaXJlY3RseS4NCg0KdjI6IGRyb3Aga2Vy
bmVsZG9jIGZvciBub3cgaW50ZXJuYWwgaGFuZGxpbmcNCg0KU2lnbmVkLW9mZi1ieTogQ2hyaXN0
aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KUmV2aWV3ZWQtYnk6IERhbmll
bCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+DQotLS0NCiBkcml2ZXJzL2RtYS1idWYv
ZG1hLXJlc3YuYyB8IDExICsrKysrKysrKysrDQogaW5jbHVkZS9saW51eC9kbWEtcmVzdi5oICAg
fCAyNiArLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KIDIgZmlsZXMgY2hhbmdlZCwgMTIgaW5z
ZXJ0aW9ucygrKSwgMjUgZGVsZXRpb25zKC0pDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1i
dWYvZG1hLXJlc3YuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jDQppbmRleCAyMjMwYjhj
NGE1OTUuLmJjNjUyY2U0ZTlhOSAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVz
di5jDQorKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYw0KQEAgLTU2LDYgKzU2LDEyIEBA
DQogREVGSU5FX1dEX0NMQVNTKHJlc2VydmF0aW9uX3d3X2NsYXNzKTsNCiBFWFBPUlRfU1lNQk9M
KHJlc2VydmF0aW9uX3d3X2NsYXNzKTsNCiANCitzdHJ1Y3QgZG1hX3Jlc3ZfbGlzdCB7DQorCXN0
cnVjdCByY3VfaGVhZCByY3U7DQorCXUzMiBzaGFyZWRfY291bnQsIHNoYXJlZF9tYXg7DQorCXN0
cnVjdCBkbWFfZmVuY2UgX19yY3UgKnNoYXJlZFtdOw0KK307DQorDQogLyoqDQogICogZG1hX3Jl
c3ZfbGlzdF9hbGxvYyAtIGFsbG9jYXRlIGZlbmNlIGxpc3QNCiAgKiBAc2hhcmVkX21heDogbnVt
YmVyIG9mIGZlbmNlcyB3ZSBuZWVkIHNwYWNlIGZvcg0KQEAgLTEzMyw2ICsxMzksMTEgQEAgdm9p
ZCBkbWFfcmVzdl9maW5pKHN0cnVjdCBkbWFfcmVzdiAqb2JqKQ0KIH0NCiBFWFBPUlRfU1lNQk9M
KGRtYV9yZXN2X2ZpbmkpOw0KIA0KK3N0YXRpYyBpbmxpbmUgc3RydWN0IGRtYV9yZXN2X2xpc3Qg
KmRtYV9yZXN2X3NoYXJlZF9saXN0KHN0cnVjdCBkbWFfcmVzdiAqb2JqKQ0KK3sNCisJcmV0dXJu
IHJjdV9kZXJlZmVyZW5jZV9jaGVjayhvYmotPmZlbmNlLCBkbWFfcmVzdl9oZWxkKG9iaikpOw0K
K30NCisNCiAvKioNCiAgKiBkbWFfcmVzdl9yZXNlcnZlX3NoYXJlZCAtIFJlc2VydmUgc3BhY2Ug
dG8gYWRkIHNoYXJlZCBmZW5jZXMgdG8NCiAgKiBhIGRtYV9yZXN2Lg0KZGlmZiAtLWdpdCBhL2lu
Y2x1ZGUvbGludXgvZG1hLXJlc3YuaCBiL2luY2x1ZGUvbGludXgvZG1hLXJlc3YuaA0KaW5kZXgg
M2Y1MzE3N2JkYjQ2Li4yMDJjYzY1ZDA2MjEgMTAwNjQ0DQotLS0gYS9pbmNsdWRlL2xpbnV4L2Rt
YS1yZXN2LmgNCisrKyBiL2luY2x1ZGUvbGludXgvZG1hLXJlc3YuaA0KQEAgLTQ3LDE4ICs0Nyw3
IEBADQogDQogZXh0ZXJuIHN0cnVjdCB3d19jbGFzcyByZXNlcnZhdGlvbl93d19jbGFzczsNCiAN
Ci0vKioNCi0gKiBzdHJ1Y3QgZG1hX3Jlc3ZfbGlzdCAtIGEgbGlzdCBvZiBzaGFyZWQgZmVuY2Vz
DQotICogQHJjdTogZm9yIGludGVybmFsIHVzZQ0KLSAqIEBzaGFyZWRfY291bnQ6IHRhYmxlIG9m
IHNoYXJlZCBmZW5jZXMNCi0gKiBAc2hhcmVkX21heDogZm9yIGdyb3dpbmcgc2hhcmVkIGZlbmNl
IHRhYmxlDQotICogQHNoYXJlZDogc2hhcmVkIGZlbmNlIHRhYmxlDQotICovDQotc3RydWN0IGRt
YV9yZXN2X2xpc3Qgew0KLQlzdHJ1Y3QgcmN1X2hlYWQgcmN1Ow0KLQl1MzIgc2hhcmVkX2NvdW50
LCBzaGFyZWRfbWF4Ow0KLQlzdHJ1Y3QgZG1hX2ZlbmNlIF9fcmN1ICpzaGFyZWRbXTsNCi19Ow0K
K3N0cnVjdCBkbWFfcmVzdl9saXN0Ow0KIA0KIC8qKg0KICAqIHN0cnVjdCBkbWFfcmVzdiAtIGEg
cmVzZXJ2YXRpb24gb2JqZWN0IG1hbmFnZXMgZmVuY2VzIGZvciBhIGJ1ZmZlcg0KQEAgLTQ1MSwx
OSArNDQwLDYgQEAgZG1hX3Jlc3ZfZXhjbF9mZW5jZShzdHJ1Y3QgZG1hX3Jlc3YgKm9iaikNCiAJ
cmV0dXJuIHJjdV9kZXJlZmVyZW5jZV9jaGVjayhvYmotPmZlbmNlX2V4Y2wsIGRtYV9yZXN2X2hl
bGQob2JqKSk7DQogfQ0KIA0KLS8qKg0KLSAqIGRtYV9yZXN2X3NoYXJlZF9saXN0IC0gZ2V0IHRo
ZSByZXNlcnZhdGlvbiBvYmplY3QncyBzaGFyZWQgZmVuY2UgbGlzdA0KLSAqIEBvYmo6IHRoZSBy
ZXNlcnZhdGlvbiBvYmplY3QNCi0gKg0KLSAqIFJldHVybnMgdGhlIHNoYXJlZCBmZW5jZSBsaXN0
LiBDYWxsZXIgbXVzdCBlaXRoZXIgaG9sZCB0aGUgb2JqZWN0cw0KLSAqIHRocm91Z2ggZG1hX3Jl
c3ZfbG9jaygpIG9yIHRoZSBSQ1UgcmVhZCBzaWRlIGxvY2sgdGhyb3VnaCByY3VfcmVhZF9sb2Nr
KCksDQotICogb3Igb25lIG9mIHRoZSB2YXJpYW50cyBvZiBlYWNoDQotICovDQotc3RhdGljIGlu
bGluZSBzdHJ1Y3QgZG1hX3Jlc3ZfbGlzdCAqZG1hX3Jlc3Zfc2hhcmVkX2xpc3Qoc3RydWN0IGRt
YV9yZXN2ICpvYmopDQotew0KLQlyZXR1cm4gcmN1X2RlcmVmZXJlbmNlX2NoZWNrKG9iai0+ZmVu
Y2UsIGRtYV9yZXN2X2hlbGQob2JqKSk7DQotfQ0KLQ0KIHZvaWQgZG1hX3Jlc3ZfaW5pdChzdHJ1
Y3QgZG1hX3Jlc3YgKm9iaik7DQogdm9pZCBkbWFfcmVzdl9maW5pKHN0cnVjdCBkbWFfcmVzdiAq
b2JqKTsNCiBpbnQgZG1hX3Jlc3ZfcmVzZXJ2ZV9zaGFyZWQoc3RydWN0IGRtYV9yZXN2ICpvYmos
IHVuc2lnbmVkIGludCBudW1fZmVuY2VzKTsNCi0tIA0KMi4yNS4xDQoNCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBs
aXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5k
IGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
