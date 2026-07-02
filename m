Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0G/VEOJvVmoz5gAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:20:34 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 0782D757566
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 19:20:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=gmail.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 20F8F401F2
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 17:20:33 +0000 (UTC)
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	by lists.linaro.org (Postfix) with ESMTPS id 6166E40AB4
	for <linaro-mm-sig@lists.linaro.org>; Thu,  2 Jul 2026 17:12:46 +0000 (UTC)
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-847a5528b33so1131650b3a.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 02 Jul 2026 10:12:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783012365; x=1783617165; darn=lists.linaro.org;
        h=content-transfer-encoding:content-type:mime-version:message-id:date
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=STd5MQvh0NQAJtVTzJOmHeJBNZHmtcn+Q1hAWhkb67w=;
        b=V4jnriXwDueemsOrAi9tupPyBSKAXTt7k/mKC7lkhro/o8+xHi3F+VKY8WePKt7bDG
         s/6wqaVMy8wiQnD6qcDN9JhpcXhMWzeLbZRmz/RZaF3c73K4Sp/TbDi6D9YR9T4O1vV0
         RBSKCYxcv9PsCQGQ4nQiS/jv/J6ANZW+faE4iav8s+wGhcUHGIJgqoVMWUyUEj+4fgQz
         7CGslj8RPpvJc/rPDk4lAqA3VOHLhU3iNZt1ZUYfXjC25SR658luRCseNqlDukK/9bf+
         D/mUoJjirUq7NFCSX+liPedGH2Q6/vWR7PIy7Bfo+DfJuBWavlIs9JUG0Ek0XrZ1yLmN
         Vr3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783012365; x=1783617165;
        h=content-transfer-encoding:content-type:mime-version:message-id:date
         :subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=STd5MQvh0NQAJtVTzJOmHeJBNZHmtcn+Q1hAWhkb67w=;
        b=ZtxPEEJsQq2vxQS4XrbyDyOO+1We1ctR5sco6al1ZcepdQsyyKRkeImj8yi9xq/MWj
         zdRXbqjbjT5N2jCtWKomgsWgnZAQuIUIsJFlAB3tqZp798Pf4Or9e/1Mk+8FpwrRJ0jF
         I+I2l1yq+1wsrr8FFc227xxspnwPuDhsrk6iyD9f4s4mVeOFO5YaFpvkXJkV9IMfyFim
         E2ZuucKkhXzKwFAZnXRSD5HuZ7dYeth4cE6x5Iy/sDCrC6JsoQnX+Fto6fap48p3nhwh
         20vGL1yMHvSm9/Dlbz4koXUJ2MskxBgRikb1gTn57RWegLhhsB/nn1kmiqw3RNsHXblu
         JS4w==
X-Forwarded-Encrypted: i=1; AFNElJ9nlyebgZdPFQq87UnsgHrvnCUa/by18oZMTEsN3AKJMkTuFG4/Ckf9/oxl8QQ/Aavu6CJowVQeXhY3Whky@lists.linaro.org
X-Gm-Message-State: AOJu0YwyK82yzIbxFuwPtYjzVXU2ANv9OU6Sh9KtbzX3cxx1NECpK+/5
	BR0rSAGNJVYIVn/Bft+Sl3x+qcp8mX6ZFN4LowFPeWOZHSwxbWASBmA=
X-Gm-Gg: AfdE7clyi2fzJCeJVkn3lWNdgGasJ/S2GCdux8wrfac2oEy7ztltBdg3rvu4Oaeh9QP
	wayTQ7MutsTtQuw7afUahcjI4U7OMq+icVj++znCYoVSoG2LEXkejTdlcbVLNOtKLHQyxJyGI1k
	R1G180FQMufpZ+1aPNl3kSAP1m/RpTsfQjVmPTMkHU04mxqDLjBXQ+W/YEMBRvMnmWtO1OuXNYD
	QOoxTwSI4BzQaEH/ONnmoWxqGJkHVchyz+j5DEOOOemhsuNdg725XFpu2mXJSTgpVF5y+O9NZ/n
	8luVJ4CxuhsWpBvN0dtod2wAXZyaQJ5dJLrkSgPS4fdhjnUHZ1wKtVYqAEWvYt8YOAK4VA5gXV6
	0tx1FRYNRye2LcrcFDj8vxtdr1aYrBINy3GSSCaFc3Q1jxUIHnv1ZwRr6DuY3gSZOHT9JakTGep
	PoXkKhq77vWqPlFlWYE1+0v62dgo3La+nIcXaXhujfk2efOsTIX978K/7wX6VXIV0a
X-Received: by 2002:a05:6a21:d84:b0:3bf:7189:2d1f with SMTP id adf61e73a8af0-3bff422a1c2mr6819657637.31.1783012365278;
        Thu, 02 Jul 2026 10:12:45 -0700 (PDT)
Received: from localhost.localdomain ([186.158.238.108])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c9e8eb0ef50sm1644370a12.6.2026.07.02.10.12.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jul 2026 10:12:44 -0700 (PDT)
From: =?UTF-8?q?Nicol=C3=A1s=20Antinori?= <nico.antinori.7@gmail.com>
To: Sumit Semwal <sumit.semwal@linaro.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Date: Thu,  2 Jul 2026 14:12:31 -0300
Message-ID: <20260702171234.31030-1-nico.antinori.7@gmail.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-Spamd-Bar: ---
X-MailFrom: nico.antinori.7@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: GQJ4J7MD4PTUCTMBQ4D5MQF6L3SFA2WL
X-Message-ID-Hash: GQJ4J7MD4PTUCTMBQ4D5MQF6L3SFA2WL
X-Mailman-Approved-At: Tue, 14 Jul 2026 17:17:02 +0000
CC: =?UTF-8?q?Nicol=C3=A1s=20Antinori?= <nico.antinori.7@gmail.com>, Shuah Khan <skhan@linuxfoundation.org>, linux-kernel@vger.kernel.org, linux-kernel-mentees@lists.linux.dev, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf: docs: remove invalid struct member
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GQJ4J7MD4PTUCTMBQ4D5MQF6L3SFA2WL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[288];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:nico.antinori.7@gmail.com,m:skhan@linuxfoundation.org,m:linux-kernel@vger.kernel.org,m:linux-kernel-mentees@lists.linux.dev,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:nicoantinori7@gmail.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[nicoantinori7@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nicoantinori7@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[gmail.com,linuxfoundation.org,vger.kernel.org,lists.linux.dev,lists.freedesktop.org,lists.linaro.org];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:from_smtp,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0782D757566

SW4gdGhlIHN0cnVjdHMgZG1hX2ZlbmNlX2FycmF5IGFuZCBkbWFfZmVuY2VfY2hhaW4sIHRoZSBm
aWVsZCAnbG9jaycNCmhhcyBiZWVuIHJlbW92ZWQsIGJ1dCBpdHMgZG9jdW1lbnRhdGlvbiBjb21t
ZW50IHJlbWFpbmVkLiBSZW1vdmUgdGhlDQpzdGFsZSBkZXNjcmlwdGlvbnMgdG8gY2xlYXIgdXAg
dGhlIGZvbGxvd2luZyBrZXJuZWwtZG9jIHdhcm5pbmdzOg0KDQpXQVJOSU5HOiAuL2luY2x1ZGUv
bGludXgvZG1hLWZlbmNlLWFycmF5Lmg6NDcgRXhjZXNzIHN0cnVjdCBtZW1iZXIgJ2xvY2snIGRl
c2NyaXB0aW9uIGluICdkbWFfZmVuY2VfYXJyYXknDQpXQVJOSU5HOiAuL2luY2x1ZGUvbGludXgv
ZG1hLWZlbmNlLWFycmF5Lmg6NDcgRXhjZXNzIHN0cnVjdCBtZW1iZXIgJ2xvY2snIGRlc2NyaXB0
aW9uIGluICdkbWFfZmVuY2VfYXJyYXknDQpXQVJOSU5HOiAuL2luY2x1ZGUvbGludXgvZG1hLWZl
bmNlLWNoYWluLmg6NDggRXhjZXNzIHN0cnVjdCBtZW1iZXIgJ2xvY2snIGRlc2NyaXB0aW9uIGlu
ICdkbWFfZmVuY2VfY2hhaW4nDQpXQVJOSU5HOiAuL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLWNo
YWluLmg6NDggRXhjZXNzIHN0cnVjdCBtZW1iZXIgJ2xvY2snIGRlc2NyaXB0aW9uIGluICdkbWFf
ZmVuY2VfY2hhaW4nDQoNCkZpeGVzOiA1OTQzMjQzOTE0YjkgKCJkbWEtYnVmOiB1c2UgaW5saW5l
IGxvY2sgZm9yIHRoZSBkbWEtZmVuY2UtYXJyYXkiKQ0KRml4ZXM6IGE0MDhjMGNhMGM0MSAoImRt
YS1idWY6IHVzZSBpbmxpbmUgbG9jayBmb3IgdGhlIGRtYS1mZW5jZS1jaGFpbiIpDQpTaWduZWQt
b2ZmLWJ5OiBOaWNvbMOhcyBBbnRpbm9yaSA8bmljby5hbnRpbm9yaS43QGdtYWlsLmNvbT4NCi0t
LQ0KIGluY2x1ZGUvbGludXgvZG1hLWZlbmNlLWFycmF5LmggfCAxIC0NCiBpbmNsdWRlL2xpbnV4
L2RtYS1mZW5jZS1jaGFpbi5oIHwgMSAtDQogMiBmaWxlcyBjaGFuZ2VkLCAyIGRlbGV0aW9ucygt
KQ0KDQpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UtYXJyYXkuaCBiL2luY2x1
ZGUvbGludXgvZG1hLWZlbmNlLWFycmF5LmgNCmluZGV4IDFiMWQ4NzU3OWMzOC4uMGM0OWQ3Y2Nl
ZmI2IDEwMDY0NA0KLS0tIGEvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UtYXJyYXkuaA0KKysrIGIv
aW5jbHVkZS9saW51eC9kbWEtZmVuY2UtYXJyYXkuaA0KQEAgLTI4LDcgKzI4LDYgQEAgc3RydWN0
IGRtYV9mZW5jZV9hcnJheV9jYiB7DQogLyoqDQogICogc3RydWN0IGRtYV9mZW5jZV9hcnJheSAt
IGZlbmNlIHRvIHJlcHJlc2VudCBhbiBhcnJheSBvZiBmZW5jZXMNCiAgKiBAYmFzZTogZmVuY2Ug
YmFzZSBjbGFzcw0KLSAqIEBsb2NrOiBzcGlubG9jayBmb3IgZmVuY2UgaGFuZGxpbmcNCiAgKiBA
bnVtX2ZlbmNlczogbnVtYmVyIG9mIGZlbmNlcyBpbiB0aGUgYXJyYXkNCiAgKiBAbnVtX3BlbmRp
bmc6IGZlbmNlcyBpbiB0aGUgYXJyYXkgc3RpbGwgcGVuZGluZw0KICAqIEBmZW5jZXM6IGFycmF5
IG9mIHRoZSBmZW5jZXMNCmRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS1jaGFp
bi5oIGIvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UtY2hhaW4uaA0KaW5kZXggZGYzYmVhZGYxNTE1
Li40MjI4OWY1MDUxNjQgMTAwNjQ0DQotLS0gYS9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS1jaGFp
bi5oDQorKysgYi9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS1jaGFpbi5oDQpAQCAtMjAsNyArMjAs
NiBAQA0KICAqIEBwcmV2OiBwcmV2aW91cyBmZW5jZSBvZiB0aGUgY2hhaW4NCiAgKiBAcHJldl9z
ZXFubzogb3JpZ2luYWwgcHJldmlvdXMgc2Vxbm8gYmVmb3JlIGdhcmJhZ2UgY29sbGVjdGlvbg0K
ICAqIEBmZW5jZTogZW5jYXBzdWxhdGVkIGZlbmNlDQotICogQGxvY2s6IHNwaW5sb2NrIGZvciBm
ZW5jZSBoYW5kbGluZw0KICAqLw0KIHN0cnVjdCBkbWFfZmVuY2VfY2hhaW4gew0KIAlzdHJ1Y3Qg
ZG1hX2ZlbmNlIGJhc2U7DQotLQ0KMi40Ny4zDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFy
by1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
