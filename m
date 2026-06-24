Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id msS7Jr/NO2qGdQgAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Jun 2026 14:29:51 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 5656F6BE1AD
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Jun 2026 14:29:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b=LPuEJ3PN;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=gmail.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 76C4340A6B
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 24 Jun 2026 12:29:50 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	by lists.linaro.org (Postfix) with ESMTPS id F29B43F91D
	for <linaro-mm-sig@lists.linaro.org>; Wed, 24 Jun 2026 12:29:22 +0000 (UTC)
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-46cbf263113so350196f8f.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 24 Jun 2026 05:29:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782304162; x=1782908962; darn=lists.linaro.org;
        h=content-transfer-encoding:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=XAJmFy8LAnGJsBUtLmdOHGEG0gZamE6rRydN5uBopPw=;
        b=LPuEJ3PNYezAKtH6cuHp/fmXX2q3hTHOFH2xDgJxBSOE79I0L/WjQNgQgx9KGZUMWP
         hsc0eyoEWiKSDgnEusJKva00SyMCcpgzIwPdO4O0gQAgbz6kwc2m1cJB8RqVewh7m44k
         tAwhnUHuwzJvpJ2nbWQJaKVBO8H/vOee4F1KaYDGLv0+c5U5J0SEFhKjXeOrFveXDHuk
         oDqnQ0JHQkjHmqS/WqfEZJicyjTVjDjRFCLxiJmvsoC3lSYN2TOIcBvdREciMJitPmHA
         CNBY/yWdsxXaUqizNb11kNqBUnMfjzvXWhQQd5zwdAFyhkb7nPxyTMFawGUqgg9Jxcqz
         wIqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782304162; x=1782908962;
        h=content-transfer-encoding:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XAJmFy8LAnGJsBUtLmdOHGEG0gZamE6rRydN5uBopPw=;
        b=oflxk9K83lynkuiH6xuqoxEcqUKcXPENJtys/nmjmlzcuHzzTcIBtoONwGA+l5DJhA
         EXyufcgybEmaqcjtth91UWtfHrxIVM4GEhBY67dJglbn3EsCEnwMpXhIrdjpc9pHn8om
         o3SzQCMs+TKbouQWBjsPFrJ9AAzG8zP1SExpzlrCdJvsmtEnEnM58S8AIJBkni/iEScZ
         uAGdYp+DUQWaHwjKjR9yfAEMqlD/IVltAXWQNe3yEyQuqvMz2XbMi/oU1PqYuQ0dU/dc
         aDXXcmymX8ie6gpyFz4l/i3RWPqtMqXor/LnsokyTblF2y53W7ZfdAo39kgwq7nbaFlK
         fheg==
X-Forwarded-Encrypted: i=1; AHgh+RomxtXNN+awQ4wm1np8+sHH2TSmQX+fx8w+SPaASgUdgVKfYVLD/Rkey/IJW0LSVJt52Gwgznrz2SyDsKp+@lists.linaro.org
X-Gm-Message-State: AOJu0YwVvDIkBdUZURA69Wqzebj9I0EewoQbiS6pACFRGCxxlJmim/ih
	MHOZnz8gzQGqUGvifdI/xo/sjfzMGbG4avhPyVd6ko/q0kQjMF7SZ94x
X-Gm-Gg: AfdE7cmxgAZfGn2UaMnFrQsjwevKO1OUrwrMgdHUdWt8VAAh9MAJ1mhXgTUhijk0MnR
	9wYB7+ILf0Ste7HzSifzrVA+ul1+AJ0jEeWpTFzyedxgVFwHkAZR3G0DO1tIXHniUt8o7O32SUh
	Ctml/ZWUHSnUVBmiByagztPvOkVLgMM3GGYgpVwZm4l7HUsd2h+YbsWDG3MlifaB9SSBeP1lC7b
	O+BZrpExJW7uQZW6z+Drp/VsaLlh7Z5IOsn3YSpPJuQSeEd4wfhXWY75x3HJRQ/gk19JdWqxBMi
	kebBBaSg9uba6R0XLpII2u5sHqzPHfM3JvNQx9xcebbeEGhsVDin7/Wg3Xot99kB4AO6w6OcvP8
	tB5PwiJdjoNujJxjmfg9z9ryidoi4Ax/EKpeOKxzmBXuGNMoLjDDd+2zKkW7cqYtevaoIJ+4t6o
	2nFd6xnHQ3h6nXSqXsHV5GXv882A==
X-Received: by 2002:a05:6000:2587:b0:45d:41e0:467b with SMTP id ffacd0b85a97d-46c0951d92emr5308154f8f.3.1782304161896;
        Wed, 24 Jun 2026 05:29:21 -0700 (PDT)
Received: from able.fritz.box ([2a00:e180:157e:3500:2be7:1a89:41c5:9239])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-46c9787dddbsm3896530f8f.3.2026.06.24.05.29.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jun 2026 05:29:21 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: phasta@kernel.org,
	simona@ffwll.ch,
	sumit.semwal@linaro.org,
	tvrtko.ursulin@igalia.com,
	dakr@kernel.org
Date: Wed, 24 Jun 2026 13:13:26 +0200
Message-ID: <20260624122917.2483-3-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260624122917.2483-1-christian.koenig@amd.com>
References: <20260624122917.2483-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Spamd-Bar: ----
Message-ID-Hash: YANXCHYLIKJNSKZUB53D36QQEH6E3YEH
X-Message-ID-Hash: YANXCHYLIKJNSKZUB53D36QQEH6E3YEH
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: christian.koenig@amd.com
Subject: [Linaro-mm-sig] [PATCH 02/10] dma-buf: use dma_fence_test_signaled_flag()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YANXCHYLIKJNSKZUB53D36QQEH6E3YEH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.69 / 15.00];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:phasta@kernel.org,m:simona@ffwll.ch,m:sumit.semwal@linaro.org,m:tvrtko.ursulin@igalia.com,m:dakr@kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[ckoenigleichtzumerken@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	HAS_REPLYTO(0.00)[christian.koenig@amd.com];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ckoenigleichtzumerken@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:replyto,amd.com:email,amd.com:mid,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5656F6BE1AD

SW5zdGVhZCBvZiBkbWFfZmVuY2VfaXNfc2lnbmFsZWRfbG9ja2VkKCkgdXNlDQpkbWFfZmVuY2Vf
dGVzdF9zaWduYWxlZF9mbGFnKCkuDQoNClRoZSBleHRyYSBwb2xsaW5nIGNoZWNrIHNlZW1zIHVu
ZWNlc3NhcnkgZm9yIHRob3NlIHVzZSBjYXNlcy4NCg0KU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFu
IEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KLS0tDQogZHJpdmVycy9kbWEtYnVm
L3N3X3N5bmMuYyB8IDIgKy0NCiBpbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oIHwgMiArLQ0KIDIg
ZmlsZXMgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KDQpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9kbWEtYnVmL3N3X3N5bmMuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9zd19zeW5j
LmMNCmluZGV4IDhkZjIwYjAyMThhOS4uMjQzOTkxYmMxNTA2IDEwMDY0NA0KLS0tIGEvZHJpdmVy
cy9kbWEtYnVmL3N3X3N5bmMuYw0KKysrIGIvZHJpdmVycy9kbWEtYnVmL3N3X3N5bmMuYw0KQEAg
LTI2Miw3ICsyNjIsNyBAQCBzdGF0aWMgc3RydWN0IHN5bmNfcHQgKnN5bmNfcHRfY3JlYXRlKHN0
cnVjdCBzeW5jX3RpbWVsaW5lICpvYmosDQogCUlOSVRfTElTVF9IRUFEKCZwdC0+bGluayk7DQog
DQogCXNwaW5fbG9ja19pcnEoJm9iai0+bG9jayk7DQotCWlmICghZG1hX2ZlbmNlX2lzX3NpZ25h
bGVkX2xvY2tlZCgmcHQtPmJhc2UpKSB7DQorCWlmICghZG1hX2ZlbmNlX3Rlc3Rfc2lnbmFsZWRf
ZmxhZygmcHQtPmJhc2UpKSB7DQogCQlzdHJ1Y3QgcmJfbm9kZSAqKnAgPSAmb2JqLT5wdF90cmVl
LnJiX25vZGU7DQogCQlzdHJ1Y3QgcmJfbm9kZSAqcGFyZW50ID0gTlVMTDsNCiANCmRpZmYgLS1n
aXQgYS9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oIGIvaW5jbHVkZS9saW51eC9kbWEtZmVuY2Uu
aA0KaW5kZXggMTU4Y2Q2MDlmMTAzLi44MDNlMTBjYTc2ZTMgMTAwNjQ0DQotLS0gYS9pbmNsdWRl
L2xpbnV4L2RtYS1mZW5jZS5oDQorKysgYi9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oDQpAQCAt
NjU4LDcgKzY1OCw3IEBAIHN0YXRpYyBpbmxpbmUgc3RydWN0IGRtYV9mZW5jZSAqZG1hX2ZlbmNl
X2xhdGVyKHN0cnVjdCBkbWFfZmVuY2UgKmYxLA0KICAqLw0KIHN0YXRpYyBpbmxpbmUgaW50IGRt
YV9mZW5jZV9nZXRfc3RhdHVzX2xvY2tlZChzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSkNCiB7DQot
CWlmIChkbWFfZmVuY2VfaXNfc2lnbmFsZWRfbG9ja2VkKGZlbmNlKSkNCisJaWYgKGRtYV9mZW5j
ZV90ZXN0X3NpZ25hbGVkX2ZsYWcoZmVuY2UpKQ0KIAkJcmV0dXJuIGZlbmNlLT5lcnJvciA/OiAx
Ow0KIAllbHNlDQogCQlyZXR1cm4gMDsNCi0tIA0KMi40My4wDQoNCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
