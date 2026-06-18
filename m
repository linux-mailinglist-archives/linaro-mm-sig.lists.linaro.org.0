Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Ai/1JlNfPWpn2AgAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 19:03:15 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 19D116C7AB8
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 19:03:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=pass (policy=none) header.from=linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 32C7344358
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 17:03:14 +0000 (UTC)
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	by lists.linaro.org (Postfix) with ESMTPS id D4A3E40A8D
	for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2026 12:00:52 +0000 (UTC)
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-6958372b199so1354639a12.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 18 Jun 2026 05:00:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1781784052; x=1782388852; darn=lists.linaro.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=W9ZVu+TQxqykUMzB+TkWY3eQThy4ReD8LVPOwN/E+6k=;
        b=L0HDDQJRl7EpDA+Q8yu/HR1IWZn2U8I2vpA0+eeFUc3gYRYGVoSE2Ph3cKX3p4tiL1
         KsT9PlXVX/ByAX5fWgcwrlquEg46jG2YEOVQ6iBQPazSmUQOxkGqz3DuW4bwpLsqrC34
         rn2Sfeh5OKjcE34eQOK52HOutRkwfRwo+iu3+7kIMZtqGq3WvM02H4Q8znnHOESW2iaE
         yFL467o4Ns1RqEnuWcScVg1U1rpW+CvRA0L2jWVSzUgdADhP3MGYYvm57FwO/54AFjD8
         ca6IU1ZYkd5uoDND/3MdPTVZop5Ou/8bHWQxnp0uT4aRKMK7V8/xABqRcf/XxnyB5RTw
         4UKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781784052; x=1782388852;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W9ZVu+TQxqykUMzB+TkWY3eQThy4ReD8LVPOwN/E+6k=;
        b=fm/4UsErDhSo40bT76WTMuIO4QIBR24uP/A/rzIC10Ys+vAsegA6eOHab+XxE9Wi7e
         0InzAIFIj9/yFFX3I6n67ylTTvyOsLDh7cOMe8Gz6bRSq3tzISkBQVJed+OkvYCa7Z+7
         Qt3Ol6Cun02sl7RQLMf0a0M+PWo+Gf708/DU1W6MymRm8v8fNkHkTl/fW6nbLJNFf/28
         be0up40kualsy3mwZ/0oV9nddKJ2MXYbmfwPG9cD6+4eoWX5cjAuB+i/uQNign0By82L
         l8ukFnxDtVDpxxV99P0SwaTO0Ro/zJQYr7hjtir3xJTxCdSlE1as80BeiDYxRbNE4HCL
         /7fQ==
X-Forwarded-Encrypted: i=1; AFNElJ/E8SOEihU2d0sirpuVCP2XreZE0gZsY7+YFJFm69LKsXTbQc34JwwMzws+bMPGeXv9QP9EPCCiZudz/pR0@lists.linaro.org
X-Gm-Message-State: AOJu0Ywf0FwlbM+DBlhHg/bgZ46jVf/njlHmqA9hAoYUvPnNzWcNvcHn
	fOY64OOJ/d8s/uK7I+dItL3thRbsIgSNXA9C1BiQ9FGkvAvo6XabxHB7U0/L5HENh3/CoQ==
X-Gm-Gg: AfdE7clkTFALL4ESNHpOPJS/QA691koYnZTH9LvJUrkucIdTPNkGBxWDbWvUixe8BO3
	1lK1cHTjZe+0GdpAz0TPWwHXz1DCClObx2iimhpusL7RdqEQqgolhlEMWJJ5Z/TjmnIqaYWSxpr
	xAAt0vOMdUyoeD9/0BxYdjF6VPcb1p7K7Uw+4IR8g/0IskCDPNkFxd3CEFLsqywkgncBfo3e+/R
	1rppd4knpeLms0RpXhX0RUtS9KIO6ZpXKAAdI1+lZqVmTcNFLiCnzYQ5Oc1i/lU/rOx8bEt8i0g
	qolpr7o47nYGhF024i+uM4T4Ma2CId58l+kBypqDsNFhPBfE4rtlSIiVwjlTQkrGBRRjwdvD2ru
	TaS8w2ZX5rbqfklEdJDTZcy/9CSJUPybeZHdW7ejnBSq+MxzTjp3BJglHnOAqhMowci+W6HBwCt
	tgS97lSPGSDojlZBQdsgBcJx/fR8O7GFGfVyED2URRhfB8pNMnOMZZIbmb3k7YL7e91QqOt/6QZ
	wdukJs=
X-Received: by 2002:a17:907:94cb:b0:bef:8141:668c with SMTP id a640c23a62f3a-c07c4a063e6mr96074166b.6.1781784051445;
        Thu, 18 Jun 2026 05:00:51 -0700 (PDT)
Received: from puffmais2.c.googlers.com (181.179.204.35.bc.googleusercontent.com. [35.204.179.181])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-bfdb4420966sm954924566b.9.2026.06.18.05.00.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Jun 2026 05:00:49 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 18 Jun 2026 13:00:39 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Message-Id: <20260618-linux-drm_crtc_fix-v1-1-801f29c9853d@linaro.org>
X-B4-Tracking: v=1; b=H4sIAOfdM2oC/x2MWwqAMAzAriL9tuAGm4+riMiYVQs6pVMRxLs7/
 EwgeSCSMEVosgeELo68hQQqz8DPLkyEPCQGXWhbWFXhwuG8cZC193L4fuQbtS2tMU75qh4hhbt
 Q0v+07d73Azf7nLhkAAAA
X-Change-ID: 20260618-linux-drm_crtc_fix-267655a1c89f
To: Sumit Semwal <sumit.semwal@linaro.org>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
X-Mailer: b4 0.14.3
X-Spamd-Bar: ----
X-MailFrom: andre.draszik@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: A6LUQCDXFZGXMQ2HWJAVPMZTNUFAWZME
X-Message-ID-Hash: A6LUQCDXFZGXMQ2HWJAVPMZTNUFAWZME
X-Mailman-Approved-At: Thu, 25 Jun 2026 17:03:03 +0000
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Peter Griffin <peter.griffin@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, Juan Yescas <jyescas@google.com>, kernel-team@android.com, =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-fence: use correct callback in dma_fence_timeline_name()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/A6LUQCDXFZGXMQ2HWJAVPMZTNUFAWZME/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.09 / 15.00];
	DATE_IN_PAST(1.00)[173];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[andre.draszik@linaro.org,linaro-mm-sig-bounces@lists.linaro.org];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_RECIPIENTS(0.00)[m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:tvrtko.ursulin@igalia.com,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,m:peter.griffin@linaro.org,m:tudor.ambarus@linaro.org,m:jyescas@google.com,m:kernel-team@android.com,m:andre.draszik@linaro.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,linaro.org:email,linaro.org:mid,linaro.org:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 19D116C7AB8

ZG1hX2ZlbmNlX3RpbWVsaW5lX25hbWUoKSBpcyBhIHdyYXBwZXIgYXJvdW5kDQpkbWFfZmVuY2Vf
b3BzOjpnZXRfdGltZWxpbmVfbmFtZSgpLiBTaW5jZSB0aGUgYmxhbWVkIGNvbW1pdCBiZWxvdywg
aXQNCmNhbGxzIGFuIGluY29ycmVjdCBjYWxsYmFjay4NCg0KVXBkYXRlIGl0IHRvIHJlc3RvcmUg
ZnVuY3Rpb25hbGl0eSBieSBjYWxsaW5nIHRoZSBpbnRlbmRlZCBjYWxsYmFjay4NCg0KRml4ZXM6
IDYyOTE4NTQyYjdiZiAoImRtYS1mZW5jZTogRml4IHNwYXJzZSB3YXJuaW5ncyBkdWUgX19yY3Ug
YW5ub3RhdGlvbnMiKQ0KU2lnbmVkLW9mZi1ieTogQW5kcsOpIERyYXN6aWsgPGFuZHJlLmRyYXN6
aWtAbGluYXJvLm9yZz4NCi0tLQ0KIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYyB8IDIgKy0N
CiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkNCg0KZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEt
ZmVuY2UuYw0KaW5kZXggYjNiZmE2OTQzYThlLi41MjkyZDcxNDQxOWIgMTAwNjQ0DQotLS0gYS9k
cml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMNCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVu
Y2UuYw0KQEAgLTEyMDIsNyArMTIwMiw3IEBAIGNvbnN0IGNoYXIgX19yY3UgKmRtYV9mZW5jZV90
aW1lbGluZV9uYW1lKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKQ0KIAkvKiBSQ1UgcHJvdGVjdGlv
biBpcyByZXF1aXJlZCBmb3Igc2FmZSBhY2Nlc3MgdG8gcmV0dXJuZWQgc3RyaW5nICovDQogCW9w
cyA9IHJjdV9kZXJlZmVyZW5jZShmZW5jZS0+b3BzKTsNCiAJaWYgKCFkbWFfZmVuY2VfdGVzdF9z
aWduYWxlZF9mbGFnKGZlbmNlKSkNCi0JCXJldHVybiAoY29uc3QgY2hhciBfX3JjdSAqKW9wcy0+
Z2V0X2RyaXZlcl9uYW1lKGZlbmNlKTsNCisJCXJldHVybiAoY29uc3QgY2hhciBfX3JjdSAqKW9w
cy0+Z2V0X3RpbWVsaW5lX25hbWUoZmVuY2UpOw0KIAllbHNlDQogCQlyZXR1cm4gKGNvbnN0IGNo
YXIgX19yY3UgKikic2lnbmFsZWQtdGltZWxpbmUiOw0KIH0NCg0KLS0tDQpiYXNlLWNvbW1pdDog
ZTJjYWUwMGMwNWQxOTY0OTFjMzE4MTk2NzkyMjk3ZjJkZmJhYTAyYw0KY2hhbmdlLWlkOiAyMDI2
MDYxOC1saW51eC1kcm1fY3J0Y19maXgtMjY3NjU1YTFjODlmDQoNCkJlc3QgcmVnYXJkcywNCi0t
IA0KQW5kcsOpIERyYXN6aWsgPGFuZHJlLmRyYXN6aWtAbGluYXJvLm9yZz4NCg0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWls
aW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJl
IHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
