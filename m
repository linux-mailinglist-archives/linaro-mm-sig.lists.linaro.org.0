Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D41BD19D77
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 Jan 2026 16:22:23 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3F1724016C
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 Jan 2026 15:22:22 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	by lists.linaro.org (Postfix) with ESMTPS id 23DCD40160
	for <linaro-mm-sig@lists.linaro.org>; Tue, 13 Jan 2026 15:21:32 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b="nP/yLcsH";
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.128.45 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4779aa4f928so77360785e9.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 13 Jan 2026 07:21:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768317691; x=1768922491; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KflEZErmXVKJhiftCCKJkIp0qiachwlYSLe5CM6mkvw=;
        b=nP/yLcsHKi9oDEP/ZmqvqdOoZuOsoUdPCUAy2bsOf9iQXkayG1QzPfSULQPUe9C7IQ
         GDvypXVf3RID2UgIAbE4L6kwj1MuzgbPYTiWJmtsnPTlhbKjsQ4rcC1QigHixHulZbPd
         YzUOr3vThGzbgXxlnksECGPqTIi4AFDvsWUgOG5pV7Xr7KH2ruPhecvy8oxkXccELECA
         B3cVtdvDolou/JhK7VXAh4GZUifBJZy+vUzaPW0AFJAuSYU9DyO8CeVPWDI5olptEMCZ
         BWt5El5qmg9ciehjnrdF7mjbVrn+lRdodgkCN9q7sYnuyIOih1sP3smkh0k86aL0JDoV
         RNow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768317691; x=1768922491;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=KflEZErmXVKJhiftCCKJkIp0qiachwlYSLe5CM6mkvw=;
        b=XHwlSc6+pIcTQif5ROPYQZfYG/HFvxNI3A4vescx490Ks6AxelE9eugbxUq7Q0k8pO
         A1+ONdMp5VTGNZSpouGZ4d8PEGSuR/nrtpXq7oft/ebPClP8XfNKS5W2vTg7g2TXz5YG
         v7ah75Omf95EvOd8n2D1RPfcKdmxe8621rCkM+s7cl/NZSowH4STqWJWt4Fv/KQP1YsT
         Ox+17iLwj67yCfd57xaS+wRx+ozxuZWPdpRTmGhcu+7ODDepxpFx1iZh19g7skLbzzMn
         +SmGAYvy3kmxMQqTfLWEAq/Wc2j26TWUXGiJoRXPtZjMtetCPnGe0ztsiWSxRxNmOHFD
         Ph7Q==
X-Forwarded-Encrypted: i=1; AJvYcCU1b1OyasE4jmhg6WwVeFboTW79F98pUQbGyNbTNCUsC3e6QYhx+nUlnNNWJDDjeQxZIXIq+en3rn9BfVe6@lists.linaro.org
X-Gm-Message-State: AOJu0Yx7MeN9L+IUU86lVNqj2kyHKrewwRKtgHrRfvrTufflerwkJsl+
	PYj3Eh8TiD1P0Rx5g6tjx3NIX4TkoK4HlllmH/dDUgN3BBfwL743MEbo
X-Gm-Gg: AY/fxX4MBUrU5wqH54y4Cs1lNlRBsFiQGQtVk9jF744/OOa+vlFhUlyLCmOrT9973jR
	E3vY9r4M+tmLvBs/OAPgSButpNSz+l/N8VWX3JznXSWKb0c9Y2s8QkIi2jm2r2ETiNdi92oAwGW
	f62DgK0Mt9tPqPXY3N/kDkIlBB1m8QPjCnKfN8T7m4CR77nsbWCTnuXbxY0hsbnYgc/eFpZTraE
	wULjaJvt3xQoaKFVflbUTV9hTp6CuD2oDDgL8gV3UK3jaJz8Kzw2JOsqIQTlP5s94PwduNEN0LI
	Gs6gnJoCpZu0WpgCrqyVLM40EV4J7rq9IIr6oD3/JPJDGxigkBMHHfriuoPiGVwAv5fsDeOjO/g
	909mjubGSP2+wwdnPQkp2XaZHXoi5NsuAe//6nFqmV4g3pPIhPqQw21/IQHpCDEhAsFhme4eGt6
	deMLY2VFiDREComywOV+YuTBo=
X-Google-Smtp-Source: AGHT+IHy6M4rDen6wr7M5Q+J7ZXIwjMQbjJv0orU89FCqAGv8/poQkXr3SDLeMMHCmP6CmMIPC72wQ==
X-Received: by 2002:a05:600c:a119:b0:479:3a87:2093 with SMTP id 5b1f17b1804b1-47d8c5f5facmr161281335e9.37.1768317690837;
        Tue, 13 Jan 2026 07:21:30 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:141c:9800:1651:dfa:9e48:25d5])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47ecf6a5466sm129518405e9.11.2026.01.13.07.21.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 07:21:30 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: phasta@mailbox.org,
	tursulin@ursulin.net,
	matthew.brost@intel.com,
	sumit.semwal@linaro.org
Date: Tue, 13 Jan 2026 16:16:10 +0100
Message-ID: <20260113152125.47380-4-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260113152125.47380-1-christian.koenig@amd.com>
References: <20260113152125.47380-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Rspamd-Queue-Id: 23DCD40160
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	URIBL_BLOCKED(0.00)[igalia.com:email,mail-wm1-f45.google.com:helo,mail-wm1-f45.google.com:rdns];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.45:from];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.128.45:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DNSWL_BLOCKED(0.00)[2a00:e180:141c:9800:1651:dfa:9e48:25d5:received];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DWL_DNSWL_BLOCKED(0.00)[gmail.com:dkim];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: AKWHH7DRWAISXEHKAFP3BYMZ6W6FMBKD
X-Message-ID-Hash: AKWHH7DRWAISXEHKAFP3BYMZ6W6FMBKD
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 03/10] dma-buf: detach fence ops on signal v2
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AKWHH7DRWAISXEHKAFP3BYMZ6W6FMBKD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

V2hlbiBuZWl0aGVyIGEgcmVsZWFzZSBub3IgYSB3YWl0IGJhY2tlbmQgb3BzIGlzIHNwZWNpZmll
ZCBpdCBpcyBwb3NzaWJsZQ0KdG8gbGV0IHRoZSBkbWFfZmVuY2UgbGl2ZSBvbiBpbmRlcGVuZGVu
dGx5IG9mIHRoZSBtb2R1bGUgd2hvIGlzc3VlZCBpdC4NCg0KVGhpcyBtYWtlcyBpdCBwb3NzaWJs
ZSB0byB1bmxvYWQgZHJpdmVycyBhbmQgb25seSB3YWl0IGZvciBhbGwgdGhlaXINCmZlbmNlcyB0
byBzaWduYWwuDQoNCnYyOiBmaXggdHlwbyBpbiBjb21tZW50DQoNClNpZ25lZC1vZmYtYnk6IENo
cmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NClJldmlld2VkLWJ5OiBU
dnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaWdhbGlhLmNvbT4NClJldmlld2VkLWJ5OiBQ
aGlsaXBwIFN0YW5uZXIgPHBoYXN0YUBrZXJuZWwub3JnPg0KLS0tDQogZHJpdmVycy9kbWEtYnVm
L2RtYS1mZW5jZS5jIHwgMTYgKysrKysrKysrKysrLS0tLQ0KIGluY2x1ZGUvbGludXgvZG1hLWZl
bmNlLmggICB8IDEwICsrKysrKystLS0NCiAyIGZpbGVzIGNoYW5nZWQsIDE5IGluc2VydGlvbnMo
KyksIDcgZGVsZXRpb25zKC0pDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZl
bmNlLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMNCmluZGV4IGUzZTc0Zjk4ZjU4ZC4u
NDgxZjFjZDlhYWUyIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQor
KysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMNCkBAIC0zNzEsNiArMzcxLDE0IEBAIHZv
aWQgZG1hX2ZlbmNlX3NpZ25hbF90aW1lc3RhbXBfbG9ja2VkKHN0cnVjdCBkbWFfZmVuY2UgKmZl
bmNlLA0KIAkJCQkgICAgICAmZmVuY2UtPmZsYWdzKSkpDQogCQlyZXR1cm47DQogDQorCS8qDQor
CSAqIFdoZW4gbmVpdGhlciBhIHJlbGVhc2Ugbm9yIGEgd2FpdCBvcGVyYXRpb24gaXMgc3BlY2lm
aWVkIHNldCB0aGUgb3BzDQorCSAqIHBvaW50ZXIgdG8gTlVMTCB0byBhbGxvdyB0aGUgZmVuY2Ug
c3RydWN0dXJlIHRvIGJlY29tZSBpbmRlcGVuZGVudA0KKwkgKiBmcm9tIHdobyBvcmlnaW5hbGx5
IGlzc3VlZCBpdC4NCisJICovDQorCWlmICghZmVuY2UtPm9wcy0+cmVsZWFzZSAmJiAhZmVuY2Ut
Pm9wcy0+d2FpdCkNCisJCVJDVV9JTklUX1BPSU5URVIoZmVuY2UtPm9wcywgTlVMTCk7DQorDQog
CS8qIFN0YXNoIHRoZSBjYl9saXN0IGJlZm9yZSByZXBsYWNpbmcgaXQgd2l0aCB0aGUgdGltZXN0
YW1wICovDQogCWxpc3RfcmVwbGFjZSgmZmVuY2UtPmNiX2xpc3QsICZjYl9saXN0KTsNCiANCkBA
IC01MzcsNyArNTQ1LDcgQEAgZG1hX2ZlbmNlX3dhaXRfdGltZW91dChzdHJ1Y3QgZG1hX2ZlbmNl
ICpmZW5jZSwgYm9vbCBpbnRyLCBzaWduZWQgbG9uZyB0aW1lb3V0KQ0KIAlyY3VfcmVhZF9sb2Nr
KCk7DQogCW9wcyA9IHJjdV9kZXJlZmVyZW5jZShmZW5jZS0+b3BzKTsNCiAJdHJhY2VfZG1hX2Zl
bmNlX3dhaXRfc3RhcnQoZmVuY2UpOw0KLQlpZiAob3BzLT53YWl0KSB7DQorCWlmIChvcHMgJiYg
b3BzLT53YWl0KSB7DQogCQkvKg0KIAkJICogSW1wbGVtZW50aW5nIHRoZSB3YWl0IG9wcyBpcyBk
ZXByZWNhdGVkIGFuZCBub3Qgc3VwcG9ydGVkIGZvcg0KIAkJICogaXNzdWVyIGluZGVwZW5kZW50
IGZlbmNlcywgc28gaXQgaXMgb2sgdG8gdXNlIHRoZSBvcHMgb3V0c2lkZQ0KQEAgLTYwMiw3ICs2
MTAsNyBAQCB2b2lkIGRtYV9mZW5jZV9yZWxlYXNlKHN0cnVjdCBrcmVmICprcmVmKQ0KIAl9DQog
DQogCW9wcyA9IHJjdV9kZXJlZmVyZW5jZShmZW5jZS0+b3BzKTsNCi0JaWYgKG9wcy0+cmVsZWFz
ZSkNCisJaWYgKG9wcyAmJiBvcHMtPnJlbGVhc2UpDQogCQlvcHMtPnJlbGVhc2UoZmVuY2UpOw0K
IAllbHNlDQogCQlkbWFfZmVuY2VfZnJlZShmZW5jZSk7DQpAQCAtNjM4LDcgKzY0Niw3IEBAIHN0
YXRpYyBib29sIF9fZG1hX2ZlbmNlX2VuYWJsZV9zaWduYWxpbmcoc3RydWN0IGRtYV9mZW5jZSAq
ZmVuY2UpDQogDQogCXJjdV9yZWFkX2xvY2soKTsNCiAJb3BzID0gcmN1X2RlcmVmZXJlbmNlKGZl
bmNlLT5vcHMpOw0KLQlpZiAoIXdhc19zZXQgJiYgb3BzLT5lbmFibGVfc2lnbmFsaW5nKSB7DQor
CWlmICghd2FzX3NldCAmJiBvcHMgJiYgb3BzLT5lbmFibGVfc2lnbmFsaW5nKSB7DQogCQl0cmFj
ZV9kbWFfZmVuY2VfZW5hYmxlX3NpZ25hbChmZW5jZSk7DQogDQogCQlpZiAoIW9wcy0+ZW5hYmxl
X3NpZ25hbGluZyhmZW5jZSkpIHsNCkBAIC0xMDI0LDcgKzEwMzIsNyBAQCB2b2lkIGRtYV9mZW5j
ZV9zZXRfZGVhZGxpbmUoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsIGt0aW1lX3QgZGVhZGxpbmUp
DQogDQogCXJjdV9yZWFkX2xvY2soKTsNCiAJb3BzID0gcmN1X2RlcmVmZXJlbmNlKGZlbmNlLT5v
cHMpOw0KLQlpZiAob3BzLT5zZXRfZGVhZGxpbmUgJiYgIWRtYV9mZW5jZV9pc19zaWduYWxlZChm
ZW5jZSkpDQorCWlmIChvcHMgJiYgb3BzLT5zZXRfZGVhZGxpbmUgJiYgIWRtYV9mZW5jZV9pc19z
aWduYWxlZChmZW5jZSkpDQogCQlvcHMtPnNldF9kZWFkbGluZShmZW5jZSwgZGVhZGxpbmUpOw0K
IAlyY3VfcmVhZF91bmxvY2soKTsNCiB9DQpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9kbWEt
ZmVuY2UuaCBiL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmgNCmluZGV4IDM3MWFhOGVjZjE4ZS4u
OWJhY2Y4ODU1MzgwIDEwMDY0NA0KLS0tIGEvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaA0KKysr
IGIvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaA0KQEAgLTI4Myw3ICsyODMsMTEgQEAgdm9pZCBk
bWFfZmVuY2VfZGVzY3JpYmUoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsIHN0cnVjdCBzZXFfZmls
ZSAqc2VxKTsNCiAgKi8NCiBzdGF0aWMgaW5saW5lIGJvb2wgZG1hX2ZlbmNlX2lzX2luaXRpYWxp
emVkKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKQ0KIHsNCi0JcmV0dXJuIGZlbmNlICYmICEhZmVu
Y2UtPm9wczsNCisJLyoNCisJICogZmVuY2UtPm9wcyBtaWdodCBiZSBzZXQgdG8gTlVMTCBkdXJp
bmcgc2lnbmFsaW5nLCBidXQgdGhhdCB3aWxsIGFsc28NCisJICogc2V0IHRoZSBzaWduYWxlZCBm
bGFnLg0KKwkgKi8NCisJcmV0dXJuIGZlbmNlICYmICghIWZlbmNlLT5vcHMgfHwgISFmZW5jZS0+
ZmxhZ3MpOw0KIH0NCiANCiAvKioNCkBAIC00NjksNyArNDczLDcgQEAgZG1hX2ZlbmNlX2lzX3Np
Z25hbGVkX2xvY2tlZChzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSkNCiANCiAJcmN1X3JlYWRfbG9j
aygpOw0KIAlvcHMgPSByY3VfZGVyZWZlcmVuY2UoZmVuY2UtPm9wcyk7DQotCWlmIChvcHMtPnNp
Z25hbGVkICYmIG9wcy0+c2lnbmFsZWQoZmVuY2UpKSB7DQorCWlmIChvcHMgJiYgb3BzLT5zaWdu
YWxlZCAmJiBvcHMtPnNpZ25hbGVkKGZlbmNlKSkgew0KIAkJcmN1X3JlYWRfdW5sb2NrKCk7DQog
CQlkbWFfZmVuY2Vfc2lnbmFsX2xvY2tlZChmZW5jZSk7DQogCQlyZXR1cm4gdHJ1ZTsNCkBAIC01
MDUsNyArNTA5LDcgQEAgZG1hX2ZlbmNlX2lzX3NpZ25hbGVkKHN0cnVjdCBkbWFfZmVuY2UgKmZl
bmNlKQ0KIA0KIAlyY3VfcmVhZF9sb2NrKCk7DQogCW9wcyA9IHJjdV9kZXJlZmVyZW5jZShmZW5j
ZS0+b3BzKTsNCi0JaWYgKG9wcy0+c2lnbmFsZWQgJiYgb3BzLT5zaWduYWxlZChmZW5jZSkpIHsN
CisJaWYgKG9wcyAmJiBvcHMtPnNpZ25hbGVkICYmIG9wcy0+c2lnbmFsZWQoZmVuY2UpKSB7DQog
CQlyY3VfcmVhZF91bmxvY2soKTsNCiAJCWRtYV9mZW5jZV9zaWduYWwoZmVuY2UpOw0KIAkJcmV0
dXJuIHRydWU7DQotLSANCjIuNDMuMA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0t
c2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5h
cm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
