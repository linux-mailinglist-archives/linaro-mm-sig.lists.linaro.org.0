Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mA3NKGMHi2kdPQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Feb 2026 11:24:35 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 55E631199D5
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Feb 2026 11:24:35 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6FDAF3ED23
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Feb 2026 10:24:34 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	by lists.linaro.org (Postfix) with ESMTPS id 11EB03F721
	for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Feb 2026 10:22:41 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=Q6gqTDOu;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.128.48 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-4806f3fc50bso45439175e9.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Feb 2026 02:22:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770718960; x=1771323760; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XqVToHPilGc3rB1IlznFCmAYG7fAdkPbx5gcjGdkNEw=;
        b=Q6gqTDOuFny0oBKQlJ0SBMkBLq3Y3qugS1V+FXEmx2OL1NNzYVU/e1P2B0JfVCLVPX
         47CnKFzlrioqJIQwtvPORS7ik6QhGohX6FwOeqx0+BKQzSVkZiahwxAnPV0kguZAQjED
         6SaTdXtFIWiiP2ma4FvJheYg0J4BxTqhyX0EYje/3rPEgx4Etr+B5KNE50o8+cYgFJfX
         bnN2theAeHNww3kV7LIDBplS1xKQ/teykITZkeRW0EDl1jCVsiM7+eftANXyKk7LGtW7
         4dGiWSBUQIFAvqJUCI+dXT+QR1uVuw/f9ttFTktLTeb7fcbzYqJir8HARFeTI9QG2n0t
         2C0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770718960; x=1771323760;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=XqVToHPilGc3rB1IlznFCmAYG7fAdkPbx5gcjGdkNEw=;
        b=rSzFkekm1fqb4/mA1wNreWE4J5rkwNQTlcVqAmH6QHli06APPos+ujdGNYSVkz7V3C
         vgX3GxiXsaT3qXXCzRQazK05+jEY+92tKzFyx5D70uRKCgVcODYbvZ3cIYFsbVcK1clp
         GpGKrrYLi9JDKu1PhOl3vGm7SLiohBu35XiV0dYFWqiNuAXxgesquZTTrpOKKFPvSPqL
         oBvNNdsObAWi6rIopm2LCeUlDxu7DisL/hCW5inACcZxQqaHLMAUCRkc4N4IVNwuTmZw
         goA8BT8Xk/nS0l3ZX9WA6McQJi03zuS0SV73sOa6/R/lA/EltGmJGYL1gXIk/qO+pF4S
         Qm+g==
X-Forwarded-Encrypted: i=1; AJvYcCXP2e+7D8OSd0EKu9CEXHmW/ilRm39qRo3enmZEE1OLWeSUi7+mBtEdrCPJ4cDgRL5MKGxr9dwa5hI88S/R@lists.linaro.org
X-Gm-Message-State: AOJu0Yz6/L77k9p/V6HxRrA8VxWAcRHhc/O+HfRwvGLx2p8ROHpQeXmC
	D6S0RUqCbU3AtdKZViSxievQHB/rNDWDEWNumqM5IN1WUAJ4fy5k8ltB
X-Gm-Gg: AZuq6aIaXkcRixfrKtCHkGLLISulomlXMNTC2FDsLvmO6BG5u5KZXHs4k5bPVad3uJu
	3DNz7ig2KydkirIDGD22LqKVngp24RcCurnpw8zl9hiVAICXXMon3bWCCu1y5k2Kgl9AkSjrmLR
	SiZtHQ0i3pbIHrRwjibMTAtmowWhhAH4LgHACXtKd4z3rvz+l5TllaE1IJ4cgdSc3ZZ/zxLrOgn
	8vS3cp6zmWN5iE9jKjtERiSh3zgxsle052PhYUcq8TX54sXhqTiu1wpzpZAg3gOx4mqdv6PoU4O
	xGy64IUBttziogjVIQmcugAhhDc60HhJVaMw1cm6dZJDIq53AMhSPq8lBJ/qK0Urnndl/pv+s4f
	5sxZ8Tln0XMOVEQ36LctTIsGt6Mh24fIzlOnUO+/d6b3QNaQZXr+QJCRs6XMdk9p9yL9upjsNGS
	kUIav//Fe0DrrQqTbWMfgX6x1SgUZG5RWsGidn
X-Received: by 2002:a05:600c:4748:b0:477:5cc6:7e44 with SMTP id 5b1f17b1804b1-483201e46c9mr190064615e9.11.1770718959551;
        Tue, 10 Feb 2026 02:22:39 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:152a:6000:83ca:11f0:7e35:a75d])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4834d5d8ebfsm81549605e9.2.2026.02.10.02.22.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 02:22:39 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: phasta@mailbox.org,
	matthew.brost@intel.com,
	sumit.semwal@linaro.org
Date: Tue, 10 Feb 2026 11:02:00 +0100
Message-ID: <20260210102232.1642-6-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260210102232.1642-1-christian.koenig@amd.com>
References: <20260210102232.1642-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Spamd-Bar: ----
Message-ID-Hash: UDMECJJGVWQBLSJOWLDMYFG24QLDAYRU
X-Message-ID-Hash: UDMECJJGVWQBLSJOWLDMYFG24QLDAYRU
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 5/8] dma-buf/selftests: test RCU ops and inline lock v2
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UDMECJJGVWQBLSJOWLDMYFG24QLDAYRU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.69 / 15.00];
	R_DKIM_REJECT(1.00)[gmail.com:s=20230601];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	RCPT_COUNT_FIVE(0.00)[5];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ckoenigleichtzumerken@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,igalia.com:email,linaro.org:email,amd.com:mid,amd.com:email]
X-Rspamd-Queue-Id: 55E631199D5
X-Rspamd-Action: no action

RHJvcCB0aGUgbW9ja19mZW5jZSBhbmQgdGhlIGttZW1fY2FjaGUsIGluc3RlYWQgdXNlIHRoZSBp
bmxpbmUgbG9jayBhbmQNCnRlc3QgaWYgdGhlIG9wcyBhcmUgcHJvcGVybHkgZHJvcHBlZCBhZnRl
ciBzaWduYWxpbmcuDQoNCnYyOiBtb3ZlIHRoZSBSQ1UgY2hlY2sgdG8gdGhlIGVuZCBvZiB0aGUg
dGVzdA0KDQpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmln
QGFtZC5jb20+DQpSZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGln
YWxpYS5jb20+DQotLS0NCiBkcml2ZXJzL2RtYS1idWYvc3QtZG1hLWZlbmNlLmMgfCA0NCArKysr
KysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQogMSBmaWxlIGNoYW5nZWQsIDEwIGluc2Vy
dGlvbnMoKyksIDM0IGRlbGV0aW9ucygtKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVm
L3N0LWRtYS1mZW5jZS5jIGIvZHJpdmVycy9kbWEtYnVmL3N0LWRtYS1mZW5jZS5jDQppbmRleCA1
ZDBkOWFiYzZlMjEuLjBkOWQ1MjRkNzliNiAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9z
dC1kbWEtZmVuY2UuYw0KKysrIGIvZHJpdmVycy9kbWEtYnVmL3N0LWRtYS1mZW5jZS5jDQpAQCAt
MTQsNDMgKzE0LDI2IEBADQogDQogI2luY2x1ZGUgInNlbGZ0ZXN0LmgiDQogDQotc3RhdGljIHN0
cnVjdCBrbWVtX2NhY2hlICpzbGFiX2ZlbmNlczsNCi0NCi1zdGF0aWMgc3RydWN0IG1vY2tfZmVu
Y2Ugew0KLQlzdHJ1Y3QgZG1hX2ZlbmNlIGJhc2U7DQotCXN0cnVjdCBzcGlubG9jayBsb2NrOw0K
LX0gKnRvX21vY2tfZmVuY2Uoc3RydWN0IGRtYV9mZW5jZSAqZikgew0KLQlyZXR1cm4gY29udGFp
bmVyX29mKGYsIHN0cnVjdCBtb2NrX2ZlbmNlLCBiYXNlKTsNCi19DQotDQogc3RhdGljIGNvbnN0
IGNoYXIgKm1vY2tfbmFtZShzdHJ1Y3QgZG1hX2ZlbmNlICpmKQ0KIHsNCiAJcmV0dXJuICJtb2Nr
IjsNCiB9DQogDQotc3RhdGljIHZvaWQgbW9ja19mZW5jZV9yZWxlYXNlKHN0cnVjdCBkbWFfZmVu
Y2UgKmYpDQotew0KLQlrbWVtX2NhY2hlX2ZyZWUoc2xhYl9mZW5jZXMsIHRvX21vY2tfZmVuY2Uo
ZikpOw0KLX0NCi0NCiBzdGF0aWMgY29uc3Qgc3RydWN0IGRtYV9mZW5jZV9vcHMgbW9ja19vcHMg
PSB7DQogCS5nZXRfZHJpdmVyX25hbWUgPSBtb2NrX25hbWUsDQogCS5nZXRfdGltZWxpbmVfbmFt
ZSA9IG1vY2tfbmFtZSwNCi0JLnJlbGVhc2UgPSBtb2NrX2ZlbmNlX3JlbGVhc2UsDQogfTsNCiAN
CiBzdGF0aWMgc3RydWN0IGRtYV9mZW5jZSAqbW9ja19mZW5jZSh2b2lkKQ0KIHsNCi0Jc3RydWN0
IG1vY2tfZmVuY2UgKmY7DQorCXN0cnVjdCBkbWFfZmVuY2UgKmY7DQogDQotCWYgPSBrbWVtX2Nh
Y2hlX2FsbG9jKHNsYWJfZmVuY2VzLCBHRlBfS0VSTkVMKTsNCisJZiA9IGttYWxsb2Moc2l6ZW9m
KCpmKSwgR0ZQX0tFUk5FTCk7DQogCWlmICghZikNCiAJCXJldHVybiBOVUxMOw0KIA0KLQlzcGlu
X2xvY2tfaW5pdCgmZi0+bG9jayk7DQotCWRtYV9mZW5jZV9pbml0KCZmLT5iYXNlLCAmbW9ja19v
cHMsICZmLT5sb2NrLCAwLCAwKTsNCi0NCi0JcmV0dXJuICZmLT5iYXNlOw0KKwlkbWFfZmVuY2Vf
aW5pdChmLCAmbW9ja19vcHMsIE5VTEwsIDAsIDApOw0KKwlyZXR1cm4gZjsNCiB9DQogDQogc3Rh
dGljIGludCBzYW5pdHljaGVjayh2b2lkICphcmcpDQpAQCAtMTAwLDYgKzgzLDExIEBAIHN0YXRp
YyBpbnQgdGVzdF9zaWduYWxpbmcodm9pZCAqYXJnKQ0KIAkJZ290byBlcnJfZnJlZTsNCiAJfQ0K
IA0KKwlpZiAocmN1X2RlcmVmZXJlbmNlX3Byb3RlY3RlZChmLT5vcHMsIHRydWUpKSB7DQorCQlw
cl9lcnIoIkZlbmNlIG9wcyBub3QgY2xlYXJlZCBvbiBzaWduYWxcbiIpOw0KKwkJZ290byBlcnJf
ZnJlZTsNCisJfQ0KKw0KIAllcnIgPSAwOw0KIGVycl9mcmVlOg0KIAlkbWFfZmVuY2VfcHV0KGYp
Ow0KQEAgLTU0MCwxOSArNTI4LDcgQEAgaW50IGRtYV9mZW5jZSh2b2lkKQ0KIAkJU1VCVEVTVCh0
ZXN0X3N0dWIpLA0KIAkJU1VCVEVTVChyYWNlX3NpZ25hbF9jYWxsYmFjayksDQogCX07DQotCWlu
dCByZXQ7DQogDQogCXByX2luZm8oInNpemVvZihkbWFfZmVuY2UpPSV6dVxuIiwgc2l6ZW9mKHN0
cnVjdCBkbWFfZmVuY2UpKTsNCi0NCi0Jc2xhYl9mZW5jZXMgPSBLTUVNX0NBQ0hFKG1vY2tfZmVu
Y2UsDQotCQkJCSBTTEFCX1RZUEVTQUZFX0JZX1JDVSB8DQotCQkJCSBTTEFCX0hXQ0FDSEVfQUxJ
R04pOw0KLQlpZiAoIXNsYWJfZmVuY2VzKQ0KLQkJcmV0dXJuIC1FTk9NRU07DQotDQotCXJldCA9
IHN1YnRlc3RzKHRlc3RzLCBOVUxMKTsNCi0NCi0Ja21lbV9jYWNoZV9kZXN0cm95KHNsYWJfZmVu
Y2VzKTsNCi0NCi0JcmV0dXJuIHJldDsNCisJcmV0dXJuIHN1YnRlc3RzKHRlc3RzLCBOVUxMKTsN
CiB9DQotLSANCjIuNDMuMA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0t
c2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
