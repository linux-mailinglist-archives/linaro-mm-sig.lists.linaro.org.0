Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BD63ACB5D94
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Dec 2025 13:28:58 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E38DE3F9A4
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Dec 2025 12:28:57 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	by lists.linaro.org (Postfix) with ESMTPS id A38E63F9B4
	for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Dec 2025 12:24:23 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=S0sLv0XA;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.128.53 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-477ba2c1ca2so339035e9.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Dec 2025 04:24:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765455863; x=1766060663; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MKFOIPgWyee0VqJDnJ9O0Vw5yZXcrPVVwjX3ZlC8Jto=;
        b=S0sLv0XAy/Pd+JfH0l34kofHHV/1/7Dh3ViFwCpq16tRnGQnfkqlN3ITfNmyK/AQC/
         Peqlu659Ypf4Z7SG/LFVD5SUnktqt6d0C7zrO/R3+4f7LNsBxHooTYqq+ndT7nXPpXIC
         0WEkTXaz7fXa3LFSi+Dcv0ki2wMdPj5plSP7DL8iSAwirP6vvYsAyZNcJMjv7Niy94Ox
         x+1LIjmZAo0ZxxrEDJNfdOuSHJ1sb5VWjWxiHlc68gVsLez1crg+rbBvkbfbM/Gi/AIs
         YJTyq4hsdz3EwRXmHSfvQLTPq2lgRJCBafzizF72s1a36dLSPCaDb1asHTevLy5cyP5Y
         0HXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765455863; x=1766060663;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=MKFOIPgWyee0VqJDnJ9O0Vw5yZXcrPVVwjX3ZlC8Jto=;
        b=gR98Q6wmLrnahvKkH8OY/ynruXoAb/QK0TJ/jXPIq1ZGWCEqUMvmPBRvQp4TV1ZvLU
         NP8MPGGCFHHd1bUIygpAfSABjIdgDf8j413hstD+fq0yOrVuQaZSd9PUrzd62jYgfs0T
         YHY2LYLqzBnLYDr+ftOGft0cn2X10UvP10lHqQVllfSHwmnzsW+DA1NBIxSncUXYVDR1
         RBruEoNCAXaMehJn1gUqdu2bPsaZ9TXe9I5cX57cQg2impOjbA9UVX321q2vriWBkqiE
         W7DbJPWEf1x1otfYFxKhVwaFLaY/sPhcS6bPb6HG+DlgbL13VXDHXBpyoM1UylBqEtg6
         rp5w==
X-Forwarded-Encrypted: i=1; AJvYcCWhNrQhvtpcp6+4mlBVbgbusFPo3uFemvsfEukgvUKxC/wPYKye8/onziMGM4ht2uTzwGZ9PknRf0SY3xdQ@lists.linaro.org
X-Gm-Message-State: AOJu0YwZrTcIOzuZs9Ka/jFJxO95wCK+y0Uom5S29TOKyailhl79mcD5
	flePkm1/8NuLyPkdXTzgEHY1iXPYRI5KJ7Pt3s/ba0OslGpHu9tvWdp0
X-Gm-Gg: AY/fxX7GVkV9EaU7ad2YodbM/kdJf6qJ+MoP33XhXN5EQQnCqcyviG7SWD5cp1fNRdn
	7q544l7XTVwUOUHm3YKrLaYb3XUpwiuYhChEAGMMhK4wxE3lWQJaQ6D7Z+Qg1uAttjQJ4NOyyjj
	nLHFQmKQLXazdzevkHVrU0eyiCnw6tPv9sE13CFqPtZXsPoRni89V5g+fBBtF/EAQscHS9gCiQf
	JRg2/IYst4DrBhRFaIVSaP2CZmzji9ZQx7r3/ieWdFM0xCF0mgCo1j+sMOfjZjODfWRyTb/yomk
	kDbIpftTrbvtpuhkePCo9sDHqyhm6s51vVQWOhtBATwv80dOwk5M1trCK68bmXbEnwFL5kP/OSW
	bInxj2URHVtWJubvfsFmhaUB3TCkG1f3IbGy6sa2FqfowjP6y19QjQX9nw7DE31dOGWXQMbZk+J
	ylvI0hlNmcFQajuRfLpifyxfCO
X-Google-Smtp-Source: AGHT+IFs6lev3SI5mmze5IfLKqy3riUOKqZ4FhFbM5nT4ArMQa6jXHUO4CXW/OM/iDv/37FlqVMI2g==
X-Received: by 2002:a05:600c:a47:b0:477:76bf:e1fb with SMTP id 5b1f17b1804b1-47a8380cd25mr71774455e9.16.1765455862523;
        Thu, 11 Dec 2025 04:24:22 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:152a:9f00:dc26:feac:12f7:4088])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47a89d8e680sm12172785e9.6.2025.12.11.04.24.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 04:24:22 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: phasta@mailbox.org,
	tursulin@ursulin.net,
	matthew.brost@intel.com,
	sumit.semwal@linaro.org
Date: Thu, 11 Dec 2025 13:16:46 +0100
Message-ID: <20251211122407.1709-16-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251211122407.1709-1-christian.koenig@amd.com>
References: <20251211122407.1709-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	SUBJECT_ENDS_EXCLAIM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.53:from];
	BLOCKLISTDE_FAIL(0.00)[209.85.128.53:server fail];
	RCPT_COUNT_FIVE(0.00)[6];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[gmail.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: A38E63F9B4
X-Spamd-Bar: ----
Message-ID-Hash: 7JH3KDZJ4BMCNTW4MYM343XGEL6JAP2O
X-Message-ID-Hash: 7JH3KDZJ4BMCNTW4MYM343XGEL6JAP2O
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 15/19] drm/amdgpu: independence for the amdgpu_userq_fence!
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7JH3KDZJ4BMCNTW4MYM343XGEL6JAP2O/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhpcyBhbGxvd3MgYW1kZ3B1X3VzZXJxX2ZlbmNlcyB0byBvdXRsaXZlIHRoZSBhbWRncHUgbW9k
dWxlLg0KDQpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmln
QGFtZC5jb20+DQotLS0NCiBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZHJ2LmMg
ICAgICAgfCAxMyArLS0tLQ0KIC4uLi9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3VzZXJxX2Zl
bmNlLmMgICB8IDU0ICsrKystLS0tLS0tLS0tLS0tLS0NCiAuLi4vZ3B1L2RybS9hbWQvYW1kZ3B1
L2FtZGdwdV91c2VycV9mZW5jZS5oICAgfCAgOCAtLS0NCiAzIGZpbGVzIGNoYW5nZWQsIDExIGlu
c2VydGlvbnMoKyksIDY0IGRlbGV0aW9ucygtKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2Rydi5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUv
YW1kZ3B1X2Rydi5jDQppbmRleCAyZGZiZGRjZWY5YWIuLmYyMDYyOTdhYWU4YiAxMDA2NDQNCi0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kcnYuYw0KKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2Rydi5jDQpAQCAtMzE1NSwxMSArMzE1NSw3IEBA
IHN0YXRpYyBpbnQgX19pbml0IGFtZGdwdV9pbml0KHZvaWQpDQogDQogCXIgPSBhbWRncHVfc3lu
Y19pbml0KCk7DQogCWlmIChyKQ0KLQkJZ290byBlcnJvcl9zeW5jOw0KLQ0KLQlyID0gYW1kZ3B1
X3VzZXJxX2ZlbmNlX3NsYWJfaW5pdCgpOw0KLQlpZiAocikNCi0JCWdvdG8gZXJyb3JfZmVuY2U7
DQorCQlyZXR1cm4gcjsNCiANCiAJRFJNX0lORk8oImFtZGdwdSBrZXJuZWwgbW9kZXNldHRpbmcg
ZW5hYmxlZC5cbiIpOw0KIAlhbWRncHVfcmVnaXN0ZXJfYXRweF9oYW5kbGVyKCk7DQpAQCAtMzE3
NiwxMiArMzE3Miw2IEBAIHN0YXRpYyBpbnQgX19pbml0IGFtZGdwdV9pbml0KHZvaWQpDQogDQog
CS8qIGxldCBtb2Rwcm9iZSBvdmVycmlkZSB2Z2EgY29uc29sZSBzZXR0aW5nICovDQogCXJldHVy
biBwY2lfcmVnaXN0ZXJfZHJpdmVyKCZhbWRncHVfa21zX3BjaV9kcml2ZXIpOw0KLQ0KLWVycm9y
X2ZlbmNlOg0KLQlhbWRncHVfc3luY19maW5pKCk7DQotDQotZXJyb3Jfc3luYzoNCi0JcmV0dXJu
IHI7DQogfQ0KIA0KIHN0YXRpYyB2b2lkIF9fZXhpdCBhbWRncHVfZXhpdCh2b2lkKQ0KQEAgLTMx
OTEsNyArMzE4MSw2IEBAIHN0YXRpYyB2b2lkIF9fZXhpdCBhbWRncHVfZXhpdCh2b2lkKQ0KIAlh
bWRncHVfdW5yZWdpc3Rlcl9hdHB4X2hhbmRsZXIoKTsNCiAJYW1kZ3B1X2FjcGlfcmVsZWFzZSgp
Ow0KIAlhbWRncHVfc3luY19maW5pKCk7DQotCWFtZGdwdV91c2VycV9mZW5jZV9zbGFiX2Zpbmko
KTsNCiAJbW11X25vdGlmaWVyX3N5bmNocm9uaXplKCk7DQogCWFtZGdwdV94Y3BfZHJ2X3JlbGVh
c2UoKTsNCiB9DQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1
X3VzZXJxX2ZlbmNlLmMgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdXNlcnFf
ZmVuY2UuYw0KaW5kZXggZWJhOWZiMzU5MDQ3Li5iYjE5ZjcyNzcwYjAgMTAwNjQ0DQotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdXNlcnFfZmVuY2UuYw0KKysrIGIvZHJp
dmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3VzZXJxX2ZlbmNlLmMNCkBAIC0zMywyNiAr
MzMsNiBAQA0KICNpbmNsdWRlICJhbWRncHVfdXNlcnFfZmVuY2UuaCINCiANCiBzdGF0aWMgY29u
c3Qgc3RydWN0IGRtYV9mZW5jZV9vcHMgYW1kZ3B1X3VzZXJxX2ZlbmNlX29wczsNCi1zdGF0aWMg
c3RydWN0IGttZW1fY2FjaGUgKmFtZGdwdV91c2VycV9mZW5jZV9zbGFiOw0KLQ0KLWludCBhbWRn
cHVfdXNlcnFfZmVuY2Vfc2xhYl9pbml0KHZvaWQpDQotew0KLQlhbWRncHVfdXNlcnFfZmVuY2Vf
c2xhYiA9IGttZW1fY2FjaGVfY3JlYXRlKCJhbWRncHVfdXNlcnFfZmVuY2UiLA0KLQkJCQkJCSAg
ICBzaXplb2Yoc3RydWN0IGFtZGdwdV91c2VycV9mZW5jZSksDQotCQkJCQkJICAgIDAsDQotCQkJ
CQkJICAgIFNMQUJfSFdDQUNIRV9BTElHTiwNCi0JCQkJCQkgICAgTlVMTCk7DQotCWlmICghYW1k
Z3B1X3VzZXJxX2ZlbmNlX3NsYWIpDQotCQlyZXR1cm4gLUVOT01FTTsNCi0NCi0JcmV0dXJuIDA7
DQotfQ0KLQ0KLXZvaWQgYW1kZ3B1X3VzZXJxX2ZlbmNlX3NsYWJfZmluaSh2b2lkKQ0KLXsNCi0J
cmN1X2JhcnJpZXIoKTsNCi0Ja21lbV9jYWNoZV9kZXN0cm95KGFtZGdwdV91c2VycV9mZW5jZV9z
bGFiKTsNCi19DQogDQogc3RhdGljIGlubGluZSBzdHJ1Y3QgYW1kZ3B1X3VzZXJxX2ZlbmNlICp0
b19hbWRncHVfdXNlcnFfZmVuY2Uoc3RydWN0IGRtYV9mZW5jZSAqZikNCiB7DQpAQCAtMjI3LDcg
KzIwNyw3IEBAIHZvaWQgYW1kZ3B1X3VzZXJxX2ZlbmNlX2RyaXZlcl9wdXQoc3RydWN0IGFtZGdw
dV91c2VycV9mZW5jZV9kcml2ZXIgKmZlbmNlX2RydikNCiANCiBzdGF0aWMgaW50IGFtZGdwdV91
c2VycV9mZW5jZV9hbGxvYyhzdHJ1Y3QgYW1kZ3B1X3VzZXJxX2ZlbmNlICoqdXNlcnFfZmVuY2Up
DQogew0KLQkqdXNlcnFfZmVuY2UgPSBrbWVtX2NhY2hlX2FsbG9jKGFtZGdwdV91c2VycV9mZW5j
ZV9zbGFiLCBHRlBfQVRPTUlDKTsNCisJKnVzZXJxX2ZlbmNlID0ga21hbGxvYyhzaXplb2YoKip1
c2VycV9mZW5jZSksIEdGUF9BVE9NSUMpOw0KIAlyZXR1cm4gKnVzZXJxX2ZlbmNlID8gMCA6IC1F
Tk9NRU07DQogfQ0KIA0KQEAgLTI0MywxMiArMjIzLDExIEBAIHN0YXRpYyBpbnQgYW1kZ3B1X3Vz
ZXJxX2ZlbmNlX2NyZWF0ZShzdHJ1Y3QgYW1kZ3B1X3VzZXJtb2RlX3F1ZXVlICp1c2VycSwNCiAJ
aWYgKCFmZW5jZV9kcnYpDQogCQlyZXR1cm4gLUVJTlZBTDsNCiANCi0Jc3Bpbl9sb2NrX2luaXQo
JnVzZXJxX2ZlbmNlLT5sb2NrKTsNCiAJSU5JVF9MSVNUX0hFQUQoJnVzZXJxX2ZlbmNlLT5saW5r
KTsNCiAJZmVuY2UgPSAmdXNlcnFfZmVuY2UtPmJhc2U7DQogCXVzZXJxX2ZlbmNlLT5mZW5jZV9k
cnYgPSBmZW5jZV9kcnY7DQogDQotCWRtYV9mZW5jZV9pbml0NjQoZmVuY2UsICZhbWRncHVfdXNl
cnFfZmVuY2Vfb3BzLCAmdXNlcnFfZmVuY2UtPmxvY2ssDQorCWRtYV9mZW5jZV9pbml0NjQoZmVu
Y2UsICZhbWRncHVfdXNlcnFfZmVuY2Vfb3BzLCBOVUxMLA0KIAkJCSBmZW5jZV9kcnYtPmNvbnRl
eHQsIHNlcSk7DQogDQogCWFtZGdwdV91c2VycV9mZW5jZV9kcml2ZXJfZ2V0KGZlbmNlX2Rydik7
DQpAQCAtMzE4LDM1ICsyOTcsMjIgQEAgc3RhdGljIGJvb2wgYW1kZ3B1X3VzZXJxX2ZlbmNlX3Np
Z25hbGVkKHN0cnVjdCBkbWFfZmVuY2UgKmYpDQogCXJwdHIgPSBhbWRncHVfdXNlcnFfZmVuY2Vf
cmVhZChmZW5jZV9kcnYpOw0KIAl3cHRyID0gZmVuY2UtPmJhc2Uuc2Vxbm87DQogDQotCWlmIChy
cHRyID49IHdwdHIpDQorCWlmIChycHRyID49IHdwdHIpIHsNCisJCWFtZGdwdV91c2VycV9mZW5j
ZV9kcml2ZXJfcHV0KGZlbmNlLT5mZW5jZV9kcnYpOw0KKwkJZmVuY2UtPmZlbmNlX2RydiA9IE5V
TEw7DQorDQorCQlrdmZyZWUoZmVuY2UtPmZlbmNlX2Rydl9hcnJheSk7DQorCQlmZW5jZS0+ZmVu
Y2VfZHJ2X2FycmF5ID0gTlVMTDsNCiAJCXJldHVybiB0cnVlOw0KKwl9DQogDQogCXJldHVybiBm
YWxzZTsNCiB9DQogDQotc3RhdGljIHZvaWQgYW1kZ3B1X3VzZXJxX2ZlbmNlX2ZyZWUoc3RydWN0
IHJjdV9oZWFkICpyY3UpDQotew0KLQlzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSA9IGNvbnRhaW5l
cl9vZihyY3UsIHN0cnVjdCBkbWFfZmVuY2UsIHJjdSk7DQotCXN0cnVjdCBhbWRncHVfdXNlcnFf
ZmVuY2UgKnVzZXJxX2ZlbmNlID0gdG9fYW1kZ3B1X3VzZXJxX2ZlbmNlKGZlbmNlKTsNCi0Jc3Ry
dWN0IGFtZGdwdV91c2VycV9mZW5jZV9kcml2ZXIgKmZlbmNlX2RydiA9IHVzZXJxX2ZlbmNlLT5m
ZW5jZV9kcnY7DQotDQotCS8qIFJlbGVhc2UgdGhlIGZlbmNlIGRyaXZlciByZWZlcmVuY2UgKi8N
Ci0JYW1kZ3B1X3VzZXJxX2ZlbmNlX2RyaXZlcl9wdXQoZmVuY2VfZHJ2KTsNCi0NCi0Ja3ZmcmVl
KHVzZXJxX2ZlbmNlLT5mZW5jZV9kcnZfYXJyYXkpOw0KLQlrbWVtX2NhY2hlX2ZyZWUoYW1kZ3B1
X3VzZXJxX2ZlbmNlX3NsYWIsIHVzZXJxX2ZlbmNlKTsNCi19DQotDQotc3RhdGljIHZvaWQgYW1k
Z3B1X3VzZXJxX2ZlbmNlX3JlbGVhc2Uoc3RydWN0IGRtYV9mZW5jZSAqZikNCi17DQotCWNhbGxf
cmN1KCZmLT5yY3UsIGFtZGdwdV91c2VycV9mZW5jZV9mcmVlKTsNCi19DQotDQogc3RhdGljIGNv
bnN0IHN0cnVjdCBkbWFfZmVuY2Vfb3BzIGFtZGdwdV91c2VycV9mZW5jZV9vcHMgPSB7DQogCS5n
ZXRfZHJpdmVyX25hbWUgPSBhbWRncHVfdXNlcnFfZmVuY2VfZ2V0X2RyaXZlcl9uYW1lLA0KIAku
Z2V0X3RpbWVsaW5lX25hbWUgPSBhbWRncHVfdXNlcnFfZmVuY2VfZ2V0X3RpbWVsaW5lX25hbWUs
DQogCS5zaWduYWxlZCA9IGFtZGdwdV91c2VycV9mZW5jZV9zaWduYWxlZCwNCi0JLnJlbGVhc2Ug
PSBhbWRncHVfdXNlcnFfZmVuY2VfcmVsZWFzZSwNCiB9Ow0KIA0KIC8qKg0KQEAgLTU2MCw3ICs1
MjYsNyBAQCBpbnQgYW1kZ3B1X3VzZXJxX3NpZ25hbF9pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAq
ZGV2LCB2b2lkICpkYXRhLA0KIAlyID0gYW1kZ3B1X3VzZXJxX2ZlbmNlX2NyZWF0ZShxdWV1ZSwg
dXNlcnFfZmVuY2UsIHdwdHIsICZmZW5jZSk7DQogCWlmIChyKSB7DQogCQltdXRleF91bmxvY2so
JnVzZXJxX21nci0+dXNlcnFfbXV0ZXgpOw0KLQkJa21lbV9jYWNoZV9mcmVlKGFtZGdwdV91c2Vy
cV9mZW5jZV9zbGFiLCB1c2VycV9mZW5jZSk7DQorCQlrZnJlZSh1c2VycV9mZW5jZSk7DQogCQln
b3RvIHB1dF9nb2JqX3dyaXRlOw0KIAl9DQogDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2FtZC9hbWRncHUvYW1kZ3B1X3VzZXJxX2ZlbmNlLmggYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2Ft
ZGdwdS9hbWRncHVfdXNlcnFfZmVuY2UuaA0KaW5kZXggZDc2YWRkMmFmYzc3Li42ZjA0NzgyZjNl
YTkgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdXNlcnFf
ZmVuY2UuaA0KKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3VzZXJxX2Zl
bmNlLmgNCkBAIC0zMSwxMSArMzEsNiBAQA0KIA0KIHN0cnVjdCBhbWRncHVfdXNlcnFfZmVuY2Ug
ew0KIAlzdHJ1Y3QgZG1hX2ZlbmNlIGJhc2U7DQotCS8qDQotCSAqIFRoaXMgbG9jayBpcyBuZWNl
c3NhcnkgdG8gc3luY2hyb25pemUgdGhlDQotCSAqIHVzZXJxdWV1ZSBkbWEgZmVuY2Ugb3BlcmF0
aW9ucy4NCi0JICovDQotCXNwaW5sb2NrX3QgbG9jazsNCiAJc3RydWN0IGxpc3RfaGVhZCBsaW5r
Ow0KIAl1bnNpZ25lZCBsb25nIGZlbmNlX2Rydl9hcnJheV9jb3VudDsNCiAJc3RydWN0IGFtZGdw
dV91c2VycV9mZW5jZV9kcml2ZXIgKmZlbmNlX2RydjsNCkBAIC01OCw5ICs1Myw2IEBAIHN0cnVj
dCBhbWRncHVfdXNlcnFfZmVuY2VfZHJpdmVyIHsNCiAJY2hhciB0aW1lbGluZV9uYW1lW1RBU0tf
Q09NTV9MRU5dOw0KIH07DQogDQotaW50IGFtZGdwdV91c2VycV9mZW5jZV9zbGFiX2luaXQodm9p
ZCk7DQotdm9pZCBhbWRncHVfdXNlcnFfZmVuY2Vfc2xhYl9maW5pKHZvaWQpOw0KLQ0KIHZvaWQg
YW1kZ3B1X3VzZXJxX2ZlbmNlX2RyaXZlcl9nZXQoc3RydWN0IGFtZGdwdV91c2VycV9mZW5jZV9k
cml2ZXIgKmZlbmNlX2Rydik7DQogdm9pZCBhbWRncHVfdXNlcnFfZmVuY2VfZHJpdmVyX3B1dChz
dHJ1Y3QgYW1kZ3B1X3VzZXJxX2ZlbmNlX2RyaXZlciAqZmVuY2VfZHJ2KTsNCiBpbnQgYW1kZ3B1
X3VzZXJxX2ZlbmNlX2RyaXZlcl9hbGxvYyhzdHJ1Y3QgYW1kZ3B1X2RldmljZSAqYWRldiwNCi0t
IA0KMi40My4wDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVh
dmVAbGlzdHMubGluYXJvLm9yZwo=
