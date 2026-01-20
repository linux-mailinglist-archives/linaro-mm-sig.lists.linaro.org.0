Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 0757BD3C659
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Jan 2026 11:57:49 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1E7893F912
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Jan 2026 10:57:48 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	by lists.linaro.org (Postfix) with ESMTPS id 386873F774
	for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Jan 2026 10:57:02 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b="J/4r1oRA";
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.128.41 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-47eddddcdcfso25111965e9.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Jan 2026 02:57:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768906621; x=1769511421; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W8nRTUzBqIniXHXD/lr6vPf/DvzOtKigaEyKOe5wdMs=;
        b=J/4r1oRArTzaALEcj368RJ1Jh+dafF8R8yoL2pyqm36JFniTvnlnMdKagf6Cr61iEF
         0RaSXkgjn7a73c3aj0p/y2WHGSz/BEpW4Ny8hV/Pji1qOftXrLIq8p12m0tEHJL4QklK
         ug/UDadT/evHwj/S/iS0tgijJynf39seNDX7agftMZU463B26uirT8GzGwqNUYdSpWLg
         I3xKRTnOLY8qG2SvVXiM4NtDt+k9ESoOHFkpd4Mr7F1zcViEZhli8pt8TeH4iP10csOO
         9OEFrcQhIUqTioRIhFJ0pqr3YwHyoh0aR6RsBcxtleo3k4WqTuJjJkbsHnjNQwviFWK9
         30iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768906621; x=1769511421;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=W8nRTUzBqIniXHXD/lr6vPf/DvzOtKigaEyKOe5wdMs=;
        b=EJ+wDZJ5Re58aULHWcGnsxDx8o5COB16jNaI7AjxU5JubasaGkKF1O9w9I7hrHeIOh
         c8F4P+7aL7MP623jEO41TrzTY0t3yKXkM++PLdRdHYcfOfMePbHUVbBmvAcQZo53/4pl
         TvVEwm4CSNuK4uhUOPvRR01ASA43CWIG+yUu2siDXGDbmgrdhfUuPDgqb13L1iMtWYDz
         u2T3OQOI/L1dndYwdQC8tW8fa6dzDqz1kKMdFjsb3CWmUGUzPi/rt5CNrLHhqecMLKFG
         C14NjqkiELEltzQrlIfJGvaTHhwAsDEj4rxMiy3AzpZ0HFGb3DafEKPhsjNOO6HJRpD8
         zrTw==
X-Forwarded-Encrypted: i=1; AJvYcCXMV5eyenCWhk1rU2NIQB+eOj11LWpvHFAhvkFQrCtJ7c+SoiofWv/eDtiFG+8/i7LPFIoDYL4GTve/MKcQ@lists.linaro.org
X-Gm-Message-State: AOJu0YwTml4JCeE1wyEBwtb2COokvHwyCYdFMjNd617cL3NZhDDyc2k9
	6wFqKo8KD99XSO4KbmKlO2DmEKcORH7bBZCkOzvwPozGuJOeRNSWHeE/
X-Gm-Gg: AY/fxX408YGcbabCHfyTI+MasmLobyYr65DopxbqX3veLzRSfHoINbeibqlzFLhutwE
	1jEeFGwaDqO8gxihpVNSLMQOs24qt8XEnFy2++s745Mo4+tBJPrTESe9NyCcHh6y90pxhVKJiw4
	Lv5gPbDqTxcvkXVDvhsRHtv2r7ZcMdhSASXULu0JC5JUrnb2UaptvSObDHOGoOozfzJkzSiCwKY
	pMQMoQSJotqgcQJ34M+pv1LD0X1ND+H6by5hU0EXXsODT1aMdgc64wkKTcyRCz2hvAbseRK6fQa
	tIReFYSerD4S2Eb2G05unukl5V89rqCkJHGPH7QEZeWLJFjGJgTKcnN0rbSv+AEYiAsWmAv60lC
	6ie2ZNKJiR0ngkkpe7KYyKgL2znLP0dc5Y3sup5T4BaJybSdu7cCe5Yqb9BDuXVzimNnxJAyWjQ
	ZGFiDN7buArFCK/seyUiuTqGbG
X-Received: by 2002:a05:600c:474a:b0:477:9b4a:a82 with SMTP id 5b1f17b1804b1-4801eb14b36mr189888745e9.35.1768906621068;
        Tue, 20 Jan 2026 02:57:01 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:1563:d000:1067:f6c4:3bf8:ea8a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4801fe67780sm99418105e9.16.2026.01.20.02.57.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 02:57:00 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: phasta@mailbox.org,
	tursulin@ursulin.net,
	matthew.brost@intel.com,
	sumit.semwal@linaro.org
Date: Tue, 20 Jan 2026 11:54:42 +0100
Message-ID: <20260120105655.7134-4-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260120105655.7134-1-christian.koenig@amd.com>
References: <20260120105655.7134-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Rspamd-Queue-Id: 386873F774
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.41:from];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	DNSWL_BLOCKED(0.00)[2a00:e180:1563:d000:1067:f6c4:3bf8:ea8a:received,209.85.128.41:from];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: R7F5RPHBOAZSLJMCHXHP5WZ454HV3YR3
X-Message-ID-Hash: R7F5RPHBOAZSLJMCHXHP5WZ454HV3YR3
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 3/9] dma-buf: detach fence ops on signal v2
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/R7F5RPHBOAZSLJMCHXHP5WZ454HV3YR3/>
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
bmNlLmggICB8ICA0ICsrLS0NCiAyIGZpbGVzIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKyksIDYg
ZGVsZXRpb25zKC0pDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMg
Yi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMNCmluZGV4IGQ1MmYzMGUxYTI4OS4uYzMyNDlk
YTFiMTM2IDEwMDY0NA0KLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQorKysgYi9k
cml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMNCkBAIC0zNzEsNiArMzcxLDE0IEBAIHZvaWQgZG1h
X2ZlbmNlX3NpZ25hbF90aW1lc3RhbXBfbG9ja2VkKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLA0K
IAkJCQkgICAgICAmZmVuY2UtPmZsYWdzKSkpDQogCQlyZXR1cm47DQogDQorCS8qDQorCSAqIFdo
ZW4gbmVpdGhlciBhIHJlbGVhc2Ugbm9yIGEgd2FpdCBvcGVyYXRpb24gaXMgc3BlY2lmaWVkIHNl
dCB0aGUgb3BzDQorCSAqIHBvaW50ZXIgdG8gTlVMTCB0byBhbGxvdyB0aGUgZmVuY2Ugc3RydWN0
dXJlIHRvIGJlY29tZSBpbmRlcGVuZGVudA0KKwkgKiBmcm9tIHdobyBvcmlnaW5hbGx5IGlzc3Vl
ZCBpdC4NCisJICovDQorCWlmICghZmVuY2UtPm9wcy0+cmVsZWFzZSAmJiAhZmVuY2UtPm9wcy0+
d2FpdCkNCisJCVJDVV9JTklUX1BPSU5URVIoZmVuY2UtPm9wcywgTlVMTCk7DQorDQogCS8qIFN0
YXNoIHRoZSBjYl9saXN0IGJlZm9yZSByZXBsYWNpbmcgaXQgd2l0aCB0aGUgdGltZXN0YW1wICov
DQogCWxpc3RfcmVwbGFjZSgmZmVuY2UtPmNiX2xpc3QsICZjYl9saXN0KTsNCiANCkBAIC01Mzcs
NyArNTQ1LDcgQEAgZG1hX2ZlbmNlX3dhaXRfdGltZW91dChzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5j
ZSwgYm9vbCBpbnRyLCBzaWduZWQgbG9uZyB0aW1lb3V0KQ0KIAlyY3VfcmVhZF9sb2NrKCk7DQog
CW9wcyA9IHJjdV9kZXJlZmVyZW5jZShmZW5jZS0+b3BzKTsNCiAJdHJhY2VfZG1hX2ZlbmNlX3dh
aXRfc3RhcnQoZmVuY2UpOw0KLQlpZiAob3BzLT53YWl0KSB7DQorCWlmIChvcHMgJiYgb3BzLT53
YWl0KSB7DQogCQkvKg0KIAkJICogSW1wbGVtZW50aW5nIHRoZSB3YWl0IG9wcyBpcyBkZXByZWNh
dGVkIGFuZCBub3Qgc3VwcG9ydGVkIGZvcg0KIAkJICogaXNzdWVyIGluZGVwZW5kZW50IGZlbmNl
cywgc28gaXQgaXMgb2sgdG8gdXNlIHRoZSBvcHMgb3V0c2lkZQ0KQEAgLTYwMiw3ICs2MTAsNyBA
QCB2b2lkIGRtYV9mZW5jZV9yZWxlYXNlKHN0cnVjdCBrcmVmICprcmVmKQ0KIAl9DQogDQogCW9w
cyA9IHJjdV9kZXJlZmVyZW5jZShmZW5jZS0+b3BzKTsNCi0JaWYgKG9wcy0+cmVsZWFzZSkNCisJ
aWYgKG9wcyAmJiBvcHMtPnJlbGVhc2UpDQogCQlvcHMtPnJlbGVhc2UoZmVuY2UpOw0KIAllbHNl
DQogCQlkbWFfZmVuY2VfZnJlZShmZW5jZSk7DQpAQCAtNjM4LDcgKzY0Niw3IEBAIHN0YXRpYyBi
b29sIF9fZG1hX2ZlbmNlX2VuYWJsZV9zaWduYWxpbmcoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2Up
DQogDQogCXJjdV9yZWFkX2xvY2soKTsNCiAJb3BzID0gcmN1X2RlcmVmZXJlbmNlKGZlbmNlLT5v
cHMpOw0KLQlpZiAoIXdhc19zZXQgJiYgb3BzLT5lbmFibGVfc2lnbmFsaW5nKSB7DQorCWlmICgh
d2FzX3NldCAmJiBvcHMgJiYgb3BzLT5lbmFibGVfc2lnbmFsaW5nKSB7DQogCQl0cmFjZV9kbWFf
ZmVuY2VfZW5hYmxlX3NpZ25hbChmZW5jZSk7DQogDQogCQlpZiAoIW9wcy0+ZW5hYmxlX3NpZ25h
bGluZyhmZW5jZSkpIHsNCkBAIC0xMDI0LDcgKzEwMzIsNyBAQCB2b2lkIGRtYV9mZW5jZV9zZXRf
ZGVhZGxpbmUoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsIGt0aW1lX3QgZGVhZGxpbmUpDQogDQog
CXJjdV9yZWFkX2xvY2soKTsNCiAJb3BzID0gcmN1X2RlcmVmZXJlbmNlKGZlbmNlLT5vcHMpOw0K
LQlpZiAob3BzLT5zZXRfZGVhZGxpbmUgJiYgIWRtYV9mZW5jZV9pc19zaWduYWxlZChmZW5jZSkp
DQorCWlmIChvcHMgJiYgb3BzLT5zZXRfZGVhZGxpbmUgJiYgIWRtYV9mZW5jZV9pc19zaWduYWxl
ZChmZW5jZSkpDQogCQlvcHMtPnNldF9kZWFkbGluZShmZW5jZSwgZGVhZGxpbmUpOw0KIAlyY3Vf
cmVhZF91bmxvY2soKTsNCiB9DQpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9kbWEtZmVuY2Uu
aCBiL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmgNCmluZGV4IDZiZjRmZWIwZTAxZi4uZTFhZmJi
NTkwOWY5IDEwMDY0NA0KLS0tIGEvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaA0KKysrIGIvaW5j
bHVkZS9saW51eC9kbWEtZmVuY2UuaA0KQEAgLTQ3Miw3ICs0NzIsNyBAQCBkbWFfZmVuY2VfaXNf
c2lnbmFsZWRfbG9ja2VkKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKQ0KIA0KIAlyY3VfcmVhZF9s
b2NrKCk7DQogCW9wcyA9IHJjdV9kZXJlZmVyZW5jZShmZW5jZS0+b3BzKTsNCi0JaWYgKG9wcy0+
c2lnbmFsZWQgJiYgb3BzLT5zaWduYWxlZChmZW5jZSkpIHsNCisJaWYgKG9wcyAmJiBvcHMtPnNp
Z25hbGVkICYmIG9wcy0+c2lnbmFsZWQoZmVuY2UpKSB7DQogCQlyY3VfcmVhZF91bmxvY2soKTsN
CiAJCWRtYV9mZW5jZV9zaWduYWxfbG9ja2VkKGZlbmNlKTsNCiAJCXJldHVybiB0cnVlOw0KQEAg
LTUwOCw3ICs1MDgsNyBAQCBkbWFfZmVuY2VfaXNfc2lnbmFsZWQoc3RydWN0IGRtYV9mZW5jZSAq
ZmVuY2UpDQogDQogCXJjdV9yZWFkX2xvY2soKTsNCiAJb3BzID0gcmN1X2RlcmVmZXJlbmNlKGZl
bmNlLT5vcHMpOw0KLQlpZiAob3BzLT5zaWduYWxlZCAmJiBvcHMtPnNpZ25hbGVkKGZlbmNlKSkg
ew0KKwlpZiAob3BzICYmIG9wcy0+c2lnbmFsZWQgJiYgb3BzLT5zaWduYWxlZChmZW5jZSkpIHsN
CiAJCXJjdV9yZWFkX3VubG9jaygpOw0KIAkJZG1hX2ZlbmNlX3NpZ25hbChmZW5jZSk7DQogCQly
ZXR1cm4gdHJ1ZTsNCi0tIA0KMi40My4wDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1t
bS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxp
bmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
