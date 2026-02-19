Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MEm/Eo01l2kCvwIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Feb 2026 17:08:45 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id DB9AD160881
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Feb 2026 17:08:44 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E8669401D7
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 19 Feb 2026 16:08:43 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	by lists.linaro.org (Postfix) with ESMTPS id 59C343F700
	for <linaro-mm-sig@lists.linaro.org>; Thu, 19 Feb 2026 16:08:29 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b="T8F/STUR";
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.221.50 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-4358fb60802so920991f8f.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 19 Feb 2026 08:08:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771517308; x=1772122108; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w4GCVw8fx6uhMabcHsgAh0C5ss/bqhWZd2wvtI2G17s=;
        b=T8F/STUReJmTf/OH8zbSAne65k5BcJu637MCRybN1TZZZsJn7PZb4WVNOgw/EYKOiK
         pDxWai9tbG+rOzFHE9PVgDHqfyrSam5ihjSy9SrZCq/OKq33piUE4lEu8dvvxHUCTinl
         T+0hOvCIvgjp6JiBhUeaaU5kl1L6mxFD3lJRwZugXOJcuZEu5CSCkfEQwoFr9/l33b1s
         WFp99Q/SSzhEw4tEYqZH27Twcy41rozwvnVV93d1nBrk48rQA//dThltU/XK5iTXdBKV
         59xMhFfLD4QMV0vDKVyQWuceJMskOmGpzBGamx/wjfpRSe33RWLr1O7AAi/f9y8cswdE
         YTyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771517308; x=1772122108;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=w4GCVw8fx6uhMabcHsgAh0C5ss/bqhWZd2wvtI2G17s=;
        b=kABNW4Mr8B03JVMeHgigSjSA+lqNEAihYpLt5ipjlZ9BewfizM+BageDx1XP+Ll1M3
         n5ASYku2SG/nhEKt5+cOwrgQVi8bX6rlR34HMFLcTcojszzBI7Q1vMShny5+J/Zziy8K
         Zc4Z9dFbzAvoaYz9gFA8cAab0BXo8ULCnllUYFoepZtWD/fQVfWV/ElxCjH9VtmaRqLq
         JpoEFwUIwav5U07IgYvsAkkSih+WBmRrMW1N0naDfWEcYW1/EQcFY6xNqvHKmqpwOI04
         jCFJBiknY7MobUvQ6LuKAmHX3C1hfAMakdhPhVZljaNQZSwAK1jpLI82pi6ixbOMAciC
         yjBw==
X-Forwarded-Encrypted: i=1; AJvYcCWOAIrNM0BTJXu8c5JeKzvQtfirdxWqAho9ffMgVw1CFLhg+6rqzZTvH8IkrV+crAmCKhYm+omTTRHNgVnB@lists.linaro.org
X-Gm-Message-State: AOJu0Yw0DWENGKS99OWrvHNaxnWWGecmLHDq7gUKs0qlH9sT5/1Y13ZX
	q9fOWAqsUKU1VRiYcGubhqcr55f8f+HnHndJT1gSIDfEA6DmutN//yMqUEkq31ke
X-Gm-Gg: AZuq6aLP9OA0J1Q0umW7kS1HCVgJi6qE9ggid2P6be6mkttoHp6kbCE3gEZvRQM7S77
	q7wRlpCFZ6NTvuvknWM5ZEyrgo1wkhZ/Ny4HvnmxdHgOHbiMnwzMzg0CRPpI8cpdOesCf2XABlV
	COgxgZzc6qwMzJjoPzJn9VHu762TERMuPa07rKm4sAis0JHDsXlE6ZT6b4Rjk900Rr4Afh/fvq5
	Y3+lbrZ00qVVJ0pSDbuqQgqajKqLP3qxCDBTPyJxN+8xjYExCywrOKtJHWN93h3zGYT1fMrVDFC
	E4q/YLY0zPzE5CwbTYc0CCur6ABzatWSu5aKy5NrTFD8pQU2O2EF7YlDG84dV0JSx3A7TpDkQzq
	D82v+pbZNWuPmOweJA72Mkuol4ifnhqZDrk8KzEQLVVn7d0HLUrO77PRxlvNr8KBECmWiKGna72
	i7UBcp1ok+gtF89S/pV4fY+TtHZn2+tleu5GrT
X-Received: by 2002:a05:6000:1a8e:b0:436:180e:78d9 with SMTP id ffacd0b85a97d-439625c6600mr4068949f8f.1.1771517308090;
        Thu, 19 Feb 2026 08:08:28 -0800 (PST)
Received: from able.fritz.box ([2a00:e180:1503:b900:9c42:5977:662a:d02d])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796ac82f7sm54580031f8f.28.2026.02.19.08.08.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Feb 2026 08:08:27 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: phasta@mailbox.org,
	matthew.brost@intel.com,
	sumit.semwal@linaro.org
Date: Thu, 19 Feb 2026 17:07:05 +0100
Message-ID: <20260219160822.1529-3-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260219160822.1529-1-christian.koenig@amd.com>
References: <20260219160822.1529-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Spamd-Bar: ----
Message-ID-Hash: J4N6LPIVSYP4GJ4EQPM7RVWTY7ZU5HTD
X-Message-ID-Hash: J4N6LPIVSYP4GJ4EQPM7RVWTY7ZU5HTD
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 2/8] dma-buf: detach fence ops on signal v2
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/J4N6LPIVSYP4GJ4EQPM7RVWTY7ZU5HTD/>
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
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ckoenigleichtzumerken@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.996];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:mid,amd.com:email,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,collabora.com:email]
X-Rspamd-Queue-Id: DB9AD160881
X-Rspamd-Action: no action

V2hlbiBuZWl0aGVyIGEgcmVsZWFzZSBub3IgYSB3YWl0IGJhY2tlbmQgb3BzIGlzIHNwZWNpZmll
ZCBpdCBpcyBwb3NzaWJsZQ0KdG8gbGV0IHRoZSBkbWFfZmVuY2UgbGl2ZSBvbiBpbmRlcGVuZGVu
dGx5IG9mIHRoZSBtb2R1bGUgd2hvIGlzc3VlZCBpdC4NCg0KVGhpcyBtYWtlcyBpdCBwb3NzaWJs
ZSB0byB1bmxvYWQgZHJpdmVycyBhbmQgb25seSB3YWl0IGZvciBhbGwgdGhlaXINCmZlbmNlcyB0
byBzaWduYWwuDQoNCnYyOiBmaXggdHlwbyBpbiBjb21tZW50DQoNClNpZ25lZC1vZmYtYnk6IENo
cmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NClJldmlld2VkLWJ5OiBU
dnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaWdhbGlhLmNvbT4NClJldmlld2VkLWJ5OiBQ
aGlsaXBwIFN0YW5uZXIgPHBoYXN0YUBrZXJuZWwub3JnPg0KUmV2aWV3ZWQtYnk6IEJvcmlzIEJy
ZXppbGxvbiA8Ym9yaXMuYnJlemlsbG9uQGNvbGxhYm9yYS5jb20+DQotLS0NCiBkcml2ZXJzL2Rt
YS1idWYvZG1hLWZlbmNlLmMgfCAxNiArKysrKysrKysrKystLS0tDQogaW5jbHVkZS9saW51eC9k
bWEtZmVuY2UuaCAgIHwgIDQgKystLQ0KIDIgZmlsZXMgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygr
KSwgNiBkZWxldGlvbnMoLSkNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVu
Y2UuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYw0KaW5kZXggZDNjNGUyM2JmMjk3Li5h
ZTc3ZjkwMGMyNjcgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMNCisr
KyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYw0KQEAgLTM3MSw2ICszNzEsMTQgQEAgdm9p
ZCBkbWFfZmVuY2Vfc2lnbmFsX3RpbWVzdGFtcF9sb2NrZWQoc3RydWN0IGRtYV9mZW5jZSAqZmVu
Y2UsDQogCQkJCSAgICAgICZmZW5jZS0+ZmxhZ3MpKSkNCiAJCXJldHVybjsNCiANCisJLyoNCisJ
ICogV2hlbiBuZWl0aGVyIGEgcmVsZWFzZSBub3IgYSB3YWl0IG9wZXJhdGlvbiBpcyBzcGVjaWZp
ZWQgc2V0IHRoZSBvcHMNCisJICogcG9pbnRlciB0byBOVUxMIHRvIGFsbG93IHRoZSBmZW5jZSBz
dHJ1Y3R1cmUgdG8gYmVjb21lIGluZGVwZW5kZW50DQorCSAqIGZyb20gd2hvIG9yaWdpbmFsbHkg
aXNzdWVkIGl0Lg0KKwkgKi8NCisJaWYgKCFmZW5jZS0+b3BzLT5yZWxlYXNlICYmICFmZW5jZS0+
b3BzLT53YWl0KQ0KKwkJUkNVX0lOSVRfUE9JTlRFUihmZW5jZS0+b3BzLCBOVUxMKTsNCisNCiAJ
LyogU3Rhc2ggdGhlIGNiX2xpc3QgYmVmb3JlIHJlcGxhY2luZyBpdCB3aXRoIHRoZSB0aW1lc3Rh
bXAgKi8NCiAJbGlzdF9yZXBsYWNlKCZmZW5jZS0+Y2JfbGlzdCwgJmNiX2xpc3QpOw0KIA0KQEAg
LTUzNyw3ICs1NDUsNyBAQCBkbWFfZmVuY2Vfd2FpdF90aW1lb3V0KHN0cnVjdCBkbWFfZmVuY2Ug
KmZlbmNlLCBib29sIGludHIsIHNpZ25lZCBsb25nIHRpbWVvdXQpDQogCXJjdV9yZWFkX2xvY2so
KTsNCiAJb3BzID0gcmN1X2RlcmVmZXJlbmNlKGZlbmNlLT5vcHMpOw0KIAl0cmFjZV9kbWFfZmVu
Y2Vfd2FpdF9zdGFydChmZW5jZSk7DQotCWlmIChvcHMtPndhaXQpIHsNCisJaWYgKG9wcyAmJiBv
cHMtPndhaXQpIHsNCiAJCS8qDQogCQkgKiBJbXBsZW1lbnRpbmcgdGhlIHdhaXQgb3BzIGlzIGRl
cHJlY2F0ZWQgYW5kIG5vdCBzdXBwb3J0ZWQgZm9yDQogCQkgKiBpc3N1ZXJzIG9mIGZlbmNlcyB3
aG8gbmVlZCB0aGVpciBsaWZldGltZSB0byBiZSBpbmRlcGVuZGVudA0KQEAgLTYwMyw3ICs2MTEs
NyBAQCB2b2lkIGRtYV9mZW5jZV9yZWxlYXNlKHN0cnVjdCBrcmVmICprcmVmKQ0KIAl9DQogDQog
CW9wcyA9IHJjdV9kZXJlZmVyZW5jZShmZW5jZS0+b3BzKTsNCi0JaWYgKG9wcy0+cmVsZWFzZSkN
CisJaWYgKG9wcyAmJiBvcHMtPnJlbGVhc2UpDQogCQlvcHMtPnJlbGVhc2UoZmVuY2UpOw0KIAll
bHNlDQogCQlkbWFfZmVuY2VfZnJlZShmZW5jZSk7DQpAQCAtNjM5LDcgKzY0Nyw3IEBAIHN0YXRp
YyBib29sIF9fZG1hX2ZlbmNlX2VuYWJsZV9zaWduYWxpbmcoc3RydWN0IGRtYV9mZW5jZSAqZmVu
Y2UpDQogDQogCXJjdV9yZWFkX2xvY2soKTsNCiAJb3BzID0gcmN1X2RlcmVmZXJlbmNlKGZlbmNl
LT5vcHMpOw0KLQlpZiAoIXdhc19zZXQgJiYgb3BzLT5lbmFibGVfc2lnbmFsaW5nKSB7DQorCWlm
ICghd2FzX3NldCAmJiBvcHMgJiYgb3BzLT5lbmFibGVfc2lnbmFsaW5nKSB7DQogCQl0cmFjZV9k
bWFfZmVuY2VfZW5hYmxlX3NpZ25hbChmZW5jZSk7DQogDQogCQlpZiAoIW9wcy0+ZW5hYmxlX3Np
Z25hbGluZyhmZW5jZSkpIHsNCkBAIC0xMDI1LDcgKzEwMzMsNyBAQCB2b2lkIGRtYV9mZW5jZV9z
ZXRfZGVhZGxpbmUoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsIGt0aW1lX3QgZGVhZGxpbmUpDQog
DQogCXJjdV9yZWFkX2xvY2soKTsNCiAJb3BzID0gcmN1X2RlcmVmZXJlbmNlKGZlbmNlLT5vcHMp
Ow0KLQlpZiAob3BzLT5zZXRfZGVhZGxpbmUgJiYgIWRtYV9mZW5jZV9pc19zaWduYWxlZChmZW5j
ZSkpDQorCWlmIChvcHMgJiYgb3BzLT5zZXRfZGVhZGxpbmUgJiYgIWRtYV9mZW5jZV9pc19zaWdu
YWxlZChmZW5jZSkpDQogCQlvcHMtPnNldF9kZWFkbGluZShmZW5jZSwgZGVhZGxpbmUpOw0KIAly
Y3VfcmVhZF91bmxvY2soKTsNCiB9DQpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9kbWEtZmVu
Y2UuaCBiL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmgNCmluZGV4IDlkOGE0ZWJlOGJmNy4uODBk
YjdlZGU5MWRlIDEwMDY0NA0KLS0tIGEvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaA0KKysrIGIv
aW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaA0KQEAgLTQ3Miw3ICs0NzIsNyBAQCBkbWFfZmVuY2Vf
aXNfc2lnbmFsZWRfbG9ja2VkKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKQ0KIA0KIAlyY3VfcmVh
ZF9sb2NrKCk7DQogCW9wcyA9IHJjdV9kZXJlZmVyZW5jZShmZW5jZS0+b3BzKTsNCi0JaWYgKG9w
cy0+c2lnbmFsZWQgJiYgb3BzLT5zaWduYWxlZChmZW5jZSkpIHsNCisJaWYgKG9wcyAmJiBvcHMt
PnNpZ25hbGVkICYmIG9wcy0+c2lnbmFsZWQoZmVuY2UpKSB7DQogCQlyY3VfcmVhZF91bmxvY2so
KTsNCiAJCWRtYV9mZW5jZV9zaWduYWxfbG9ja2VkKGZlbmNlKTsNCiAJCXJldHVybiB0cnVlOw0K
QEAgLTUwOCw3ICs1MDgsNyBAQCBkbWFfZmVuY2VfaXNfc2lnbmFsZWQoc3RydWN0IGRtYV9mZW5j
ZSAqZmVuY2UpDQogDQogCXJjdV9yZWFkX2xvY2soKTsNCiAJb3BzID0gcmN1X2RlcmVmZXJlbmNl
KGZlbmNlLT5vcHMpOw0KLQlpZiAob3BzLT5zaWduYWxlZCAmJiBvcHMtPnNpZ25hbGVkKGZlbmNl
KSkgew0KKwlpZiAob3BzICYmIG9wcy0+c2lnbmFsZWQgJiYgb3BzLT5zaWduYWxlZChmZW5jZSkp
IHsNCiAJCXJjdV9yZWFkX3VubG9jaygpOw0KIAkJZG1hX2ZlbmNlX3NpZ25hbChmZW5jZSk7DQog
CQlyZXR1cm4gdHJ1ZTsNCi0tIA0KMi40My4wDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFy
by1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
