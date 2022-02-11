Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 267394B2667
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 11 Feb 2022 13:51:17 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 573353EEC0
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 11 Feb 2022 12:51:16 +0000 (UTC)
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	by lists.linaro.org (Postfix) with ESMTPS id 0425B3EEA3
	for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Feb 2022 12:50:17 +0000 (UTC)
Received: by mail-ed1-f43.google.com with SMTP id g7so323171edb.5
        for <linaro-mm-sig@lists.linaro.org>; Fri, 11 Feb 2022 04:50:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=Yay/VxJwhQ+6QL2I4LYhz/KfSYkFqXmsl3nlTDInv5M=;
        b=VU+hTo5oKOnYsyAbBzArPTNcH6+3Q11UJAofYKxXCrzMF6EirPfgvZdGTx8d+w+Uha
         BykO2UtGUZH/NmcdzWBknRVJi/UgYPJe0Wy59A4RtqK16k6d/9rik9+D1x4HnYqDtOKZ
         tw0rQYF9z3Z1dA0c7brnbnOYfKVGZ03cON7N7w8LheggvoIRqzu6yfseXynTVz3W4c6L
         0bSbGxDVO//HdvfZaJINbAgPG68INoKTwmI/LX5M7tvEYMHEMPPG5R4Yndrc3VY2Dsu5
         rtfqNBoEmSYNfKa/qKg+79Y0Kc5jfvn2VkMJt50A3dVZn1H7itVSzxoJRDTNLRbMqoRt
         YWbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Yay/VxJwhQ+6QL2I4LYhz/KfSYkFqXmsl3nlTDInv5M=;
        b=NrHt04SaHd/CbFCJ1BrnR1VvLUZvLi4mc6qt7DCcOKZq1OCWXquk5vGHhujIBvyPmE
         e7lPYOmznDtblcISbblC6D7xs4h+zBpIVaXtkcKbOR8du/8tuODX3nW4wFO6/wZ2Y7xh
         22+tDQ0f4DkaVTvd5ka2DVgtEHuS1AKOZAJot9Q1LK0fMXcfc/CDRmg2naNSv4+yF5ET
         7pFAUo2srs/coByU8MXGeNxxpfcN4fG9hOM2QJB3rM7fcJuozCT0pKC1+YPgJ7tdwPib
         sLniPSuaYEe7KXGr0paFKq3+51C1iEaitvv5LcRX/oCxCNkA6sVMROJ3W1YvIHoq3qau
         hzBw==
X-Gm-Message-State: AOAM531zdQqKQSbG8hgHm6J/rhy8+NzX7IX/kir/W0rtQZ+1bYpO1r7w
	6ADPSl53p3Iif2vYyYC4UAE=
X-Google-Smtp-Source: ABdhPJzkbbqjaVbLwDQgYTyZZgWqwnOiZRzk8w0uZp3Ag5aOWaG7Qp7RVhB+66V+1eceh465wjH+BA==
X-Received: by 2002:a05:6402:43ca:: with SMTP id p10mr1731206edc.212.1644583816092;
        Fri, 11 Feb 2022 04:50:16 -0800 (PST)
Received: from able.fritz.box (p57b0bff8.dip0.t-ipconnect.de. [87.176.191.248])
        by smtp.gmail.com with ESMTPSA id w22sm7868604ejc.137.2022.02.11.04.50.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Feb 2022 04:50:15 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: daniel@ffwll.ch,
	sumit.semwal@linaro.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org
Date: Fri, 11 Feb 2022 13:49:51 +0100
Message-Id: <20220211125003.918447-12-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220211125003.918447-1-christian.koenig@amd.com>
References: <20220211125003.918447-1-christian.koenig@amd.com>
MIME-Version: 1.0
Message-ID-Hash: CGCNIOEZHYUIPQQYKSXSDF6LNNKPOGBK
X-Message-ID-Hash: CGCNIOEZHYUIPQQYKSXSDF6LNNKPOGBK
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 11/23] dma-buf: drop the DAG approach for the dma_resv object
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CGCNIOEZHYUIPQQYKSXSDF6LNNKPOGBK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

U28gZmFyIHdlIGhhZCB0aGUgYXBwcm9hY2ggb2YgdXNpbmcgYSBkaXJlY3RlZCBhY3ljbGljDQpn
cmFwaCB3aXRoIHRoZSBkbWFfcmVzdiBvYmouDQoNClRoaXMgdHVybmVkIG91dCB0byBoYXZlIG1h
bnkgZG93bnNpZGVzLCBlc3BlY2lhbGx5IGl0IG1lYW5zDQp0aGF0IGV2ZXJ5IHNpbmdsZSBkcml2
ZXIgYW5kIHVzZXIgb2YgdGhpcyBpbnRlcmZhY2UgbmVlZHMNCnRvIGJlIGF3YXJlIG9mIHRoaXMg
cmVzdHJpY3Rpb24gd2hlbiBhZGRpbmcgZmVuY2VzLiBJZiB0aGUNCnJ1bGVzIGZvciB0aGUgREFH
IGFyZSBub3QgZm9sbG93ZWQgdGhlbiB3ZSBlbmQgdXAgd2l0aA0KcG90ZW50aWFsIGhhcmQgdG8g
ZGVidWcgbWVtb3J5IGNvcnJ1cHRpb24sIGluZm9ybWF0aW9uDQpsZWFrcyBvciBldmVuIGVsZXBo
YW50IGJpZyBzZWN1cml0eSBob2xlcyBiZWNhdXNlIHdlIGFsbG93DQp1c2Vyc3BhY2UgdG8gYWNj
ZXNzIGZyZWVkIHVwIG1lbW9yeS4NCg0KU2luY2Ugd2UgYWxyZWFkeSB0b29rIGEgc3RlcCBiYWNr
IGZyb20gdGhhdCBieSBhbHdheXMNCmxvb2tpbmcgYXQgYWxsIGZlbmNlcyB3ZSBub3cgZ28gYSBz
dGVwIGZ1cnRoZXIgYW5kIHN0b3ANCmRyb3BwaW5nIHRoZSBzaGFyZWQgZmVuY2VzIHdoZW4gYSBu
ZXcgZXhjbHVzaXZlIG9uZSBpcw0KYWRkZWQuDQoNClNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBL
w7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCi0tLQ0KIGRyaXZlcnMvZG1hLWJ1Zi9k
bWEtcmVzdi5jIHwgMTYgKy0tLS0tLS0tLS0tLS0tLQ0KIGluY2x1ZGUvbGludXgvZG1hLXJlc3Yu
aCAgIHwgMjIgKysrKystLS0tLS0tLS0tLS0tLS0tLQ0KIDIgZmlsZXMgY2hhbmdlZCwgNiBpbnNl
cnRpb25zKCspLCAzMiBkZWxldGlvbnMoLSkNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1
Zi9kbWEtcmVzdi5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMNCmluZGV4IDE2YWQ5OGZk
MzEzMC4uZTA0YWZjMzBiYzBhIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2
LmMNCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jDQpAQCAtMzU2LDM1ICszNTYsMjEg
QEAgRVhQT1JUX1NZTUJPTChkbWFfcmVzdl9yZXBsYWNlX2ZlbmNlcyk7DQogICogQGZlbmNlOiB0
aGUgZXhjbHVzaXZlIGZlbmNlIHRvIGFkZA0KICAqDQogICogQWRkIGEgZmVuY2UgdG8gdGhlIGV4
Y2x1c2l2ZSBzbG90LiBAb2JqIG11c3QgYmUgbG9ja2VkIHdpdGggZG1hX3Jlc3ZfbG9jaygpLg0K
LSAqIE5vdGUgdGhhdCB0aGlzIGZ1bmN0aW9uIHJlcGxhY2VzIGFsbCBmZW5jZXMgYXR0YWNoZWQg
dG8gQG9iaiwgc2VlIGFsc28NCi0gKiAmZG1hX3Jlc3YuZmVuY2VfZXhjbCBmb3IgYSBkaXNjdXNz
aW9uIG9mIHRoZSBzZW1hbnRpY3MuDQorICogU2VlIGFsc28gJmRtYV9yZXN2LmZlbmNlX2V4Y2wg
Zm9yIGEgZGlzY3Vzc2lvbiBvZiB0aGUgc2VtYW50aWNzLg0KICAqLw0KIHZvaWQgZG1hX3Jlc3Zf
YWRkX2V4Y2xfZmVuY2Uoc3RydWN0IGRtYV9yZXN2ICpvYmosIHN0cnVjdCBkbWFfZmVuY2UgKmZl
bmNlKQ0KIHsNCiAJc3RydWN0IGRtYV9mZW5jZSAqb2xkX2ZlbmNlID0gZG1hX3Jlc3ZfZXhjbF9m
ZW5jZShvYmopOw0KLQlzdHJ1Y3QgZG1hX3Jlc3ZfbGlzdCAqb2xkOw0KLQl1MzIgaSA9IDA7DQog
DQogCWRtYV9yZXN2X2Fzc2VydF9oZWxkKG9iaik7DQogDQotCW9sZCA9IGRtYV9yZXN2X3NoYXJl
ZF9saXN0KG9iaik7DQotCWlmIChvbGQpDQotCQlpID0gb2xkLT5zaGFyZWRfY291bnQ7DQotDQog
CWRtYV9mZW5jZV9nZXQoZmVuY2UpOw0KIA0KIAl3cml0ZV9zZXFjb3VudF9iZWdpbigmb2JqLT5z
ZXEpOw0KIAkvKiB3cml0ZV9zZXFjb3VudF9iZWdpbiBwcm92aWRlcyB0aGUgbmVjZXNzYXJ5IG1l
bW9yeSBiYXJyaWVyICovDQogCVJDVV9JTklUX1BPSU5URVIob2JqLT5mZW5jZV9leGNsLCBmZW5j
ZSk7DQotCWlmIChvbGQpDQotCQlvbGQtPnNoYXJlZF9jb3VudCA9IDA7DQogCXdyaXRlX3NlcWNv
dW50X2VuZCgmb2JqLT5zZXEpOw0KIA0KLQkvKiBpbnBsYWNlIHVwZGF0ZSwgbm8gc2hhcmVkIGZl
bmNlcyAqLw0KLQl3aGlsZSAoaS0tKQ0KLQkJZG1hX2ZlbmNlX3B1dChyY3VfZGVyZWZlcmVuY2Vf
cHJvdGVjdGVkKG9sZC0+c2hhcmVkW2ldLA0KLQkJCQkJCWRtYV9yZXN2X2hlbGQob2JqKSkpOw0K
LQ0KIAlkbWFfZmVuY2VfcHV0KG9sZF9mZW5jZSk7DQogfQ0KIEVYUE9SVF9TWU1CT0woZG1hX3Jl
c3ZfYWRkX2V4Y2xfZmVuY2UpOw0KZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZG1hLXJlc3Yu
aCBiL2luY2x1ZGUvbGludXgvZG1hLXJlc3YuaA0KaW5kZXggMjBlMTNmMzY3MTBhLi5lY2I2OTdk
NGQ4NjEgMTAwNjQ0DQotLS0gYS9pbmNsdWRlL2xpbnV4L2RtYS1yZXN2LmgNCisrKyBiL2luY2x1
ZGUvbGludXgvZG1hLXJlc3YuaA0KQEAgLTkzLDIzICs5MywxMSBAQCBzdHJ1Y3QgZG1hX3Jlc3Yg
ew0KIAkgKg0KIAkgKiBUaGUgZXhjbHVzaXZlIGZlbmNlLCBpZiB0aGVyZSBpcyBvbmUgY3VycmVu
dGx5Lg0KIAkgKg0KLQkgKiBUaGVyZSBhcmUgdHdvIHdheXMgdG8gdXBkYXRlIHRoaXMgZmVuY2U6
DQotCSAqDQotCSAqIC0gRmlyc3QgYnkgY2FsbGluZyBkbWFfcmVzdl9hZGRfZXhjbF9mZW5jZSgp
LCB3aGljaCByZXBsYWNlcyBhbGwNCi0JICogICBmZW5jZXMgYXR0YWNoZWQgdG8gdGhlIHJlc2Vy
dmF0aW9uIG9iamVjdC4gVG8gZ3VhcmFudGVlIHRoYXQgbm8NCi0JICogICBmZW5jZXMgYXJlIGxv
c3QsIHRoaXMgbmV3IGZlbmNlIG11c3Qgc2lnbmFsIG9ubHkgYWZ0ZXIgYWxsIHByZXZpb3VzDQot
CSAqICAgZmVuY2VzLCBib3RoIHNoYXJlZCBhbmQgZXhjbHVzaXZlLCBoYXZlIHNpZ25hbGxlZC4g
SW4gc29tZSBjYXNlcyBpdA0KLQkgKiAgIGlzIGNvbnZlbmllbnQgdG8gYWNoaWV2ZSB0aGF0IGJ5
IGF0dGFjaGluZyBhIHN0cnVjdCBkbWFfZmVuY2VfYXJyYXkNCi0JICogICB3aXRoIGFsbCB0aGUg
bmV3IGFuZCBvbGQgZmVuY2VzLg0KLQkgKg0KLQkgKiAtIEFsdGVybmF0aXZlbHkgdGhlIGZlbmNl
IGNhbiBiZSBzZXQgZGlyZWN0bHksIHdoaWNoIGxlYXZlcyB0aGUNCi0JICogICBzaGFyZWQgZmVu
Y2VzIHVuY2hhbmdlZC4gVG8gZ3VhcmFudGVlIHRoYXQgbm8gZmVuY2VzIGFyZSBsb3N0LCB0aGlz
DQotCSAqICAgbmV3IGZlbmNlIG11c3Qgc2lnbmFsIG9ubHkgYWZ0ZXIgdGhlIHByZXZpb3VzIGV4
Y2x1c2l2ZSBmZW5jZSBoYXMNCi0JICogICBzaWduYWxsZWQuIFNpbmNlIHRoZSBzaGFyZWQgZmVu
Y2VzIGFyZSBzdGF5aW5nIGludGFjdCwgaXQgaXMgbm90DQotCSAqICAgbmVjZXNzYXJ5IHRvIG1h
aW50YWluIGFueSBvcmRlcmluZyBhZ2FpbnN0IHRob3NlLiBJZiBzZW1hbnRpY2FsbHkNCi0JICog
ICBvbmx5IGEgbmV3IGFjY2VzcyBpcyBhZGRlZCB3aXRob3V0IGFjdHVhbGx5IHRyZWF0aW5nIHRo
ZSBwcmV2aW91cw0KLQkgKiAgIG9uZSBhcyBhIGRlcGVuZGVuY3kgdGhlIGV4Y2x1c2l2ZSBmZW5j
ZXMgY2FuIGJlIHN0cnVuZyB0b2dldGhlcg0KLQkgKiAgIHVzaW5nIHN0cnVjdCBkbWFfZmVuY2Vf
Y2hhaW4uDQorCSAqIFRvIGd1YXJhbnRlZSB0aGF0IG5vIGZlbmNlcyBhcmUgbG9zdCwgdGhpcyBu
ZXcgZmVuY2UgbXVzdCBzaWduYWwNCisJICogb25seSBhZnRlciB0aGUgcHJldmlvdXMgZXhjbHVz
aXZlIGZlbmNlIGhhcyBzaWduYWxsZWQuIElmDQorCSAqIHNlbWFudGljYWxseSBvbmx5IGEgbmV3
IGFjY2VzcyBpcyBhZGRlZCB3aXRob3V0IGFjdHVhbGx5IHRyZWF0aW5nIHRoZQ0KKwkgKiBwcmV2
aW91cyBvbmUgYXMgYSBkZXBlbmRlbmN5IHRoZSBleGNsdXNpdmUgZmVuY2VzIGNhbiBiZSBzdHJ1
bmcNCisJICogdG9nZXRoZXIgdXNpbmcgc3RydWN0IGRtYV9mZW5jZV9jaGFpbi4NCiAJICoNCiAJ
ICogTm90ZSB0aGF0IGFjdHVhbCBzZW1hbnRpY3Mgb2Ygd2hhdCBhbiBleGNsdXNpdmUgb3Igc2hh
cmVkIGZlbmNlIG1lYW4NCiAJICogaXMgZGVmaW5lZCBieSB0aGUgdXNlciwgZm9yIHJlc2VydmF0
aW9uIG9iamVjdHMgc2hhcmVkIGFjcm9zcyBkcml2ZXJzDQotLSANCjIuMjUuMQ0KDQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1h
aWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3Jp
YmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
