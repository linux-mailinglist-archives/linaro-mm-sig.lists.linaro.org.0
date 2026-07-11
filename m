Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id NizjJlrDUWq/IQMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 11 Jul 2026 06:15:22 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D63974044B
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 11 Jul 2026 06:15:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b=YSUzxfQP;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=gmail.com (policy=none);
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org"
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9E00F40A44
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 11 Jul 2026 04:15:20 +0000 (UTC)
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
	by lists.linaro.org (Postfix) with ESMTPS id 048784048D
	for <linaro-mm-sig@lists.linaro.org>; Sat, 11 Jul 2026 04:15:09 +0000 (UTC)
Received: by mail-pg1-f180.google.com with SMTP id 41be03b00d2f7-c95d0a54ea5so1106419a12.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Jul 2026 21:15:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783743308; x=1784348108; darn=lists.linaro.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=cVmjO8YLPA661gTc9yInoWvB2zcY0L5sJjMyBUBdtk0=;
        b=YSUzxfQPZdnfXMjD7MjoSes0g7nuEKDbyg5/vE8kKFMJ4v5MF9O7hfY16X8I3hwtQF
         VqXZhWQwWaeQ0VIHd4e5wZQh+zGnkKBd+33XyJDj8NfMrVsJY0n6jBoGdVS9rLca4v4P
         5NUgzfjtvoo/dU+7Ui0oifio+AJU0+EnmD32uVqNOnhyKowU7Bz8LMQy8J0pUOQwyJnm
         E0YRxdwDMODvx3rVo2T8/1tG4z7cfM+RHyKWpFFE1LjrAqlzomZYzL4WyLoIQa/ZQgFn
         nBmPcqHpJG7ZyN2wdtbwoC+9vxX7tn/OakeAIxMSxglpA06Rgq22rIF8fBAeV6JV5BvB
         2FyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783743308; x=1784348108;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=cVmjO8YLPA661gTc9yInoWvB2zcY0L5sJjMyBUBdtk0=;
        b=BPX6co0Ng31OYWdVSr1TH5tEhRS54Art+TSY9rst0h8rU4yRKbHzFX+xAdiyHZTQ5v
         TZfgJ7GshGU8Mg1IBhuM5IBoA/QcvAYuohmbHudJX+YC1YHmwgBDFDDjs6CrlUPPBa1o
         mUb0hWP0GDuydVK5muuG9RBPm7fS4O6OzgKY17ixA4xikmQbU0R1h07b2Wb7dmYHQXvb
         2G2m1IQEc3DZEZ2AnDXl797VZsdvpuoAzg1H0KFkWgxQj3xuJPjG3dA1y5rkHnt9+azp
         olOyqWhGpo2KRZIgCZrK7ZF0qdUH9G1IYX5eT4x3p4xfjyETzdDxTHf8QVN5JTdsvIoM
         qTug==
X-Forwarded-Encrypted: i=1; AHgh+Robr9yBf9npE9tV44tay01z827rW2U0zf/s7RHMGNxasGgKbuSyKKd2Q7EVvK+XpNH1pTdJNmQ1IxLUq0Ac@lists.linaro.org
X-Gm-Message-State: AOJu0Ywv1So+ZvOt7y42+THY+XR4TzFbl4ZP+IlAJII8/HYix062iVNX
	LizViqdM+uYtXmrMK4YCbbz/kOFlnQHrToakyZG7rmXDaKq/bYKiREro
X-Gm-Gg: AfdE7ckvT6je5ffX8YveDiugSog4AVFkboHMGW3hJ8pAukAznG615HkjiIdh4Vvmjc4
	DAYlJdgVxbqYoBBo6xpSSsZ48xNpaOnyV59/kQqYxUOjiw/fW4WUhAdPzSNs2aFlZYe9pS/tFiz
	Ru8Nl3w84h3XQ7xpg2CnuNleNI0x/Pyel2hAvjXoLQILeF06tlrMzv8gahZ+gSMP9eW5PvJkKip
	LcE6vVHUNufpz5rfk9uc8j8QLMZIWfaHM7iw1x6CLgRMzQPaIRaBKWGcovlrel97nqh97J0MwYA
	3hiTSAkOtxlKdgT9J7o1tiq+hqlsyD3c6CSyH/+TMOFtK5NdB2ZqS1ZUF1UumQQ+POnAO2uHXDu
	ks6efMsxtc5wmml34lH1hNL56m2tNck61qS+XaVa0Q8fNjzKkNratAzBDR1r7x5YqOZSDuWUCPL
	L/GSE6ZUtkWcMVGTa4K8rS1FTHxuU=
X-Received: by 2002:a05:6a21:4d8f:b0:3bf:d1f9:b1df with SMTP id adf61e73a8af0-3c110d2f025mr1812527637.54.1783743307902;
        Fri, 10 Jul 2026 21:15:07 -0700 (PDT)
Received: from baineng-pc.. ([117.133.183.252])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-ca5afbc1208sm5769419a12.9.2026.07.10.21.15.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jul 2026 21:15:07 -0700 (PDT)
From: Baineng Shou <shoubaineng@gmail.com>
To: Sumit Semwal <sumit.semwal@linaro.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Brian Starkey <Brian.Starkey@arm.com>,
	John Stultz <jstultz@google.com>,
	"T . J . Mercier" <tjmercier@google.com>,
	Sandeep Patil <sspatil@android.com>,
	"Andrew F . Davis" <afd@ti.com>
Date: Sat, 11 Jul 2026 12:14:55 +0800
Message-Id: <20260711041455.3375292-1-shoubaineng@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260703080922.1838362-1-shoubaineng@gmail.com>
References: <20260703080922.1838362-1-shoubaineng@gmail.com>
MIME-Version: 1.0
X-Spamd-Bar: ---
Message-ID-Hash: HCFW2G4IHVEBM2FXVYTAGHOCSJCQARBJ
X-Message-ID-Hash: HCFW2G4IHVEBM2FXVYTAGHOCSJCQARBJ
X-MailFrom: shoubaineng@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: stable@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Baineng Shou <shoubaineng@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2] dma-buf: dma-heap: don't publish fd before copy_to_user() succeeds
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HCFW2G4IHVEBM2FXVYTAGHOCSJCQARBJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.69 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[shoubaineng@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_RECIPIENTS(0.00)[m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:benjamin.gaignard@collabora.com,m:Brian.Starkey@arm.com,m:jstultz@google.com,m:tjmercier@google.com,m:sspatil@android.com,m:afd@ti.com,m:stable@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,m:shoubaineng@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shoubaineng@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0D63974044B

RE1BX0hFQVBfSU9DVExfQUxMT0MgYWxsb2NhdGVzIGEgZG1hLWJ1ZiBhbmQgaW5zdGFsbHMgYW4g
ZmQgaW50byB0aGUNCmNhbGxlcidzIGZkIHRhYmxlIHZpYSBkbWFfYnVmX2ZkKCkgLT4gZmRfaW5z
dGFsbCgpIGJlZm9yZQ0KZG1hX2hlYXBfaW9jdGwoKSBjb3BpZXMgdGhlIHJlc3VsdCBiYWNrIHRv
IHVzZXJzcGFjZS4gIElmIHRoZSB0cmFpbGluZw0KY29weV90b191c2VyKCkgZmFpbHMsIHVzZXJz
cGFjZSBuZXZlciBsZWFybnMgdGhlIGZkIG51bWJlciwgYnV0IHRoZQ0KZmQgKGFuZCB0aGUgdW5k
ZXJseWluZyBkbWEtYnVmIHJlZmVyZW5jZSkgYXJlIGFscmVhZHkgdmlzaWJsZSB0bw0Kb3RoZXIg
dGhyZWFkcyBpbiB0aGUgc2FtZSBwcm9jZXNzIGFuZCBhcmUgbGVha2VkIGZvciB0aGUgbGlmZXRp
bWUgb2YNCnRoZSBwcm9jZXNzLg0KDQpUaGUgb2J2aW91cyAiY2xvc2UgaXQgb24gdGhlIGZhaWx1
cmUgcGF0aCIgZml4IGlzIHVuc2FmZTogb25jZQ0KZmRfaW5zdGFsbCgpIGhhcyBydW4sIGFub3Ro
ZXIgdGhyZWFkIGNhbiBhbHJlYWR5IGR1cCgpIHRoZSBmZCwgc2VuZA0KaXQgdmlhIFNDTV9SSUdI
VFMsIG9yIGNsb3NlKCkgaXQgYW5kIGxldCBpdHMgbnVtYmVyIGJlIHJldXNlZCwgc28gYQ0Kc3Vi
c2VxdWVudCBjbG9zZV9mZCgpIGZyb20gdGhlIGlvY3RsIHBhdGggY2FuIG9wZXJhdGUgb24gYW4g
dW5yZWxhdGVkDQpmaWxlLiAgVGhpcyB3YXMgcG9pbnRlZCBvdXQgYnkgQ2hyaXN0aWFuIEvDtm5p
ZyBvbiB2MSBbMV0uDQoNClJlc3RydWN0dXJlIHRoZSBhbGxvY2F0aW9uIHBhdGggc28gdGhhdCBm
ZF9pbnN0YWxsKCkgaXMgdGhlIGxhc3QsDQp1bmZhaWxhYmxlIHN0ZXAgb2YgYSBzdWNjZXNzZnVs
IGlvY3RsOg0KDQogIDEuIGhlYXAtPm9wcy0+YWxsb2NhdGUoKSAgICAgIGNyZWF0ZXMgdGhlIGRt
YV9idWYuDQogIDIuIGdldF91bnVzZWRfZmRfZmxhZ3MoKSAgICAgIHJlc2VydmVzIGFuIGZkIG51
bWJlciBpbiB0aGUgY2FsbGVyJ3MNCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZmQg
dGFibGUgd2l0aG91dCBwdWJsaXNoaW5nIGl0LCBzbw0KICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBubyBvdGhlciB0aHJlYWQgY2FuIG9ic2VydmUgaXQuDQogIDMuIGNvcHlfdG9fdXNl
cigpICAgICAgICAgICAgIGRlbGl2ZXJzIHRoZSBmZCBudW1iZXIgdG8gdXNlcnNwYWNlOw0KICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBvbiBmYWlsdXJlIHRoZSBmZCBpcyByZXR1cm5l
ZCB3aXRoDQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHB1dF91bnVzZWRfZmQoKSBh
bmQgdGhlIGRtYV9idWYNCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVmZXJlbmNl
IGlzIGRyb3BwZWQgd2l0aA0KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBkbWFfYnVm
X3B1dCgpLCBsZWF2aW5nIG5vIHVzZXItDQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IHZpc2libGUgc3RhdGUgYmVoaW5kLg0KICA0LiBmZF9pbnN0YWxsKCkgICAgICAgICAgICAgICBw
dWJsaXNoZXMgdGhlIGZkIC0tIGZyb20gaGVyZSBvbiB0aGUNCiAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgaW9jdGwgY2Fubm90IGZhaWwuDQoNClRvIG1ha2UgdGhpcyBwb3NzaWJsZSwg
ZG1hX2hlYXBfaW9jdGxfYWxsb2NhdGUoKSBpcyByZWZhY3RvcmVkIHRvDQpyZXR1cm4gdGhlIHN0
cnVjdCBkbWFfYnVmICogZGlyZWN0bHkgKHJldHVybmluZyBFUlJfUFRSIG9uIGZhaWx1cmUpDQpz
byB0aGUgY2FsbGVyIGhvbGRzIHRoZSBkbWFidWYgcmVmZXJlbmNlIGFjcm9zcyBzdGVwcyAzIGFu
ZCA0Lg0KVGhlIGZkIGlzIHdyaXR0ZW4gaW50byB0aGUga2RhdGEgYnVmZmVyIGJlZm9yZSBjb3B5
X3RvX3VzZXIoKSBzbw0KdGhlIHJlc2VydmVkIGZkIG51bWJlciByZWFjaGVzIHVzZXJzcGFjZSBh
dG9taWNhbGx5IHdpdGggdGhlIGluc3RhbGwuDQoNClRoZSBmYWlsdXJlIGF0IHN0ZXAgMyBpcyBl
YXNpbHkgcmVhY2hhYmxlIGZyb20gdXNlcnNwYWNlOiBwYXNzIGENCnN0cnVjdCBkbWFfaGVhcF9h
bGxvY2F0aW9uX2RhdGEgdGhhdCBsaXZlcyBpbiBhIHBhZ2Ugd2hvc2UgcHJvdGVjdGlvbg0KaXMg
ZmxpcHBlZCB0byBQUk9UX1JFQUQgYmV0d2VlbiBjb3B5X2Zyb21fdXNlcigpIGFuZCBjb3B5X3Rv
X3VzZXIoKQ0KKGUuZy4gdmlhIG1wcm90ZWN0KCkpLiAgQmVmb3JlIHRoaXMgY2hhbmdlIGVhY2gg
c3VjaCBpb2N0bCBsZWFrcyBvbmUNCmRtYWJ1ZiBmZDsgYWZ0ZXIgaXQsIHRoZSBmZCB0YWJsZSBp
cyB1bmNoYW5nZWQgb24gZmFpbHVyZSBhbmQgb25seQ0KL2Rldi9kbWFfaGVhcC88bmFtZT4gcmVt
YWlucyBvcGVuLg0KDQpObyBVQVBJIG9yIGhlYXAtZHJpdmVyIGludGVyZmFjZSBjaGFuZ2UuDQoN
ClsxXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9kcmktZGV2ZWwvMTc1ZTk4ZGUtZjQxNC00N2Q3
LTgxYzEtYzBmZTBhOGY3ZjYyQGFtZC5jb20vDQoNCkZpeGVzOiBjMDJhODFmYmE3NGYgKCJkbWEt
YnVmOiBBZGQgZG1hLWJ1ZiBoZWFwcyBmcmFtZXdvcmsiKQ0KQ2M6IHN0YWJsZUB2Z2VyLmtlcm5l
bC5vcmcNClNpZ25lZC1vZmYtYnk6IEJhaW5lbmcgU2hvdSA8c2hvdWJhaW5lbmdAZ21haWwuY29t
Pg0KLS0tDQogZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyAgfCAyMCArKysrKysrKysrDQogZHJp
dmVycy9kbWEtYnVmL2RtYS1oZWFwLmMgfCA4MCArKysrKysrKysrKysrKysrKysrLS0tLS0tLS0t
LS0tLS0tLS0tLQ0KIGluY2x1ZGUvbGludXgvZG1hLWJ1Zi5oICAgIHwgIDEgKw0KIDMgZmlsZXMg
Y2hhbmdlZCwgNjEgaW5zZXJ0aW9ucygrKSwgNDAgZGVsZXRpb25zKC0pDQoNCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0K
aW5kZXggZDUwNGM2MzZkYzI5Li40YzlhZGQ1MWY5ZWYgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2Rt
YS1idWYvZG1hLWJ1Zi5jDQorKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQpAQCAtODAz
LDYgKzgwMywyNiBAQCBpbnQgZG1hX2J1Zl9mZChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLCBpbnQg
ZmxhZ3MpDQogfQ0KIEVYUE9SVF9TWU1CT0xfTlNfR1BMKGRtYV9idWZfZmQsICJETUFfQlVGIik7
DQogDQorLyoqDQorICogZG1hX2J1Zl9mZF9pbnN0YWxsIC0gaW5zdGFsbCBhIHJlc2VydmVkIGZk
IGZvciBhIGRtYS1idWYNCisgKiBAZG1hYnVmOglbaW5dCXBvaW50ZXIgdG8gZG1hX2J1Zg0KKyAq
IEBmZDoJCVtpbl0JZmQgcmVzZXJ2ZWQgd2l0aCBnZXRfdW51c2VkX2ZkX2ZsYWdzKCkNCisgKg0K
KyAqIFB1Ymxpc2hlcyBhIHByZXZpb3VzbHkgcmVzZXJ2ZWQgZmQgaW50byB0aGUgY2FsbGVyJ3Mg
ZmQgdGFibGUuDQorICogTXVzdCBvbmx5IGJlIGNhbGxlZCBhZnRlciBhbGwgZmFsbGlibGUgd29y
ayAoZS5nLiBjb3B5X3RvX3VzZXIpDQorICogaGFzIHN1Y2NlZWRlZCwgYXMgaXQgY2Fubm90IGJl
IHVuZG9uZSBzYWZlbHkgb25jZSBjYWxsZWQuDQorICoNCisgKiBUaGUgY2FsbGVyIGlzIHJlc3Bv
bnNpYmxlIGZvciBoYXZpbmcgZW1pdHRlZCB0aGUgdHJhY2UgZXZlbnQNCisgKiAodmlhIGRtYV9i
dWZfZmQoKSBvciBnZXRfdW51c2VkX2ZkX2ZsYWdzKCkgKyB0aGlzIGZ1bmN0aW9uKQ0KKyAqIGJl
Zm9yZSBjYWxsaW5nIHRoaXMuDQorICovDQordm9pZCBkbWFfYnVmX2ZkX2luc3RhbGwoc3RydWN0
IGRtYV9idWYgKmRtYWJ1ZiwgaW50IGZkKQ0KK3sNCisJRE1BX0JVRl9UUkFDRSh0cmFjZV9kbWFf
YnVmX2ZkLCBkbWFidWYsIGZkKTsNCisJZmRfaW5zdGFsbChmZCwgZG1hYnVmLT5maWxlKTsNCit9
DQorRVhQT1JUX1NZTUJPTF9OU19HUEwoZG1hX2J1Zl9mZF9pbnN0YWxsLCAiRE1BX0JVRiIpOw0K
Kw0KIC8qKg0KICAqIGRtYV9idWZfZ2V0IC0gcmV0dXJucyB0aGUgc3RydWN0IGRtYV9idWYgcmVs
YXRlZCB0byBhbiBmZA0KICAqIEBmZDoJW2luXQlmZCBhc3NvY2lhdGVkIHdpdGggdGhlIHN0cnVj
dCBkbWFfYnVmIHRvIGJlIHJldHVybmVkDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2Rt
YS1oZWFwLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWhlYXAuYw0KaW5kZXggYTc2YmYzZjhiMDcx
Li40M2MzMmZiMjgzMTMgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWhlYXAuYw0K
KysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1oZWFwLmMNCkBAIC01NSwzMyArNTUsNiBAQCBNT0RV
TEVfUEFSTV9ERVNDKG1lbV9hY2NvdW50aW5nLA0KIAkJICJFbmFibGUgY2dyb3VwLWJhc2VkIG1l
bW9yeSBhY2NvdW50aW5nIGZvciBkbWEtYnVmIGhlYXAgYWxsb2NhdGlvbnMgKGRlZmF1bHQ9ZmFs
c2UpLiIpOw0KIEVYUE9SVF9TWU1CT0xfTlNfR1BMKG1lbV9hY2NvdW50aW5nLCAiRE1BX0JVRl9I
RUFQIik7DQogDQotc3RhdGljIGludCBkbWFfaGVhcF9idWZmZXJfYWxsb2Moc3RydWN0IGRtYV9o
ZWFwICpoZWFwLCBzaXplX3QgbGVuLA0KLQkJCQkgdTMyIGZkX2ZsYWdzLA0KLQkJCQkgdTY0IGhl
YXBfZmxhZ3MpDQotew0KLQlzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmOw0KLQlpbnQgZmQ7DQotDQot
CS8qDQotCSAqIEFsbG9jYXRpb25zIGZyb20gYWxsIGhlYXBzIGhhdmUgdG8gYmVnaW4NCi0JICog
YW5kIGVuZCBvbiBwYWdlIGJvdW5kYXJpZXMuDQotCSAqLw0KLQlsZW4gPSBQQUdFX0FMSUdOKGxl
bik7DQotCWlmICghbGVuKQ0KLQkJcmV0dXJuIC1FSU5WQUw7DQotDQotCWRtYWJ1ZiA9IGhlYXAt
Pm9wcy0+YWxsb2NhdGUoaGVhcCwgbGVuLCBmZF9mbGFncywgaGVhcF9mbGFncyk7DQotCWlmIChJ
U19FUlIoZG1hYnVmKSkNCi0JCXJldHVybiBQVFJfRVJSKGRtYWJ1Zik7DQotDQotCWZkID0gZG1h
X2J1Zl9mZChkbWFidWYsIGZkX2ZsYWdzKTsNCi0JaWYgKGZkIDwgMCkgew0KLQkJZG1hX2J1Zl9w
dXQoZG1hYnVmKTsNCi0JCS8qIGp1c3QgcmV0dXJuLCBhcyBwdXQgd2lsbCBjYWxsIHJlbGVhc2Ug
YW5kIHRoYXQgd2lsbCBmcmVlICovDQotCX0NCi0JcmV0dXJuIGZkOw0KLX0NCi0NCiBzdGF0aWMg
aW50IGRtYV9oZWFwX29wZW4oc3RydWN0IGlub2RlICppbm9kZSwgc3RydWN0IGZpbGUgKmZpbGUp
DQogew0KIAlzdHJ1Y3QgZG1hX2hlYXAgKmhlYXA7DQpAQCAtOTksMzAgKzcyLDQyIEBAIHN0YXRp
YyBpbnQgZG1hX2hlYXBfb3BlbihzdHJ1Y3QgaW5vZGUgKmlub2RlLCBzdHJ1Y3QgZmlsZSAqZmls
ZSkNCiAJcmV0dXJuIDA7DQogfQ0KIA0KLXN0YXRpYyBsb25nIGRtYV9oZWFwX2lvY3RsX2FsbG9j
YXRlKHN0cnVjdCBmaWxlICpmaWxlLCB2b2lkICpkYXRhKQ0KK3N0YXRpYyBzdHJ1Y3QgZG1hX2J1
ZiAqZG1hX2hlYXBfaW9jdGxfYWxsb2NhdGUoc3RydWN0IGZpbGUgKmZpbGUsIHZvaWQgKmRhdGEp
DQogew0KIAlzdHJ1Y3QgZG1hX2hlYXBfYWxsb2NhdGlvbl9kYXRhICpoZWFwX2FsbG9jYXRpb24g
PSBkYXRhOw0KIAlzdHJ1Y3QgZG1hX2hlYXAgKmhlYXAgPSBmaWxlLT5wcml2YXRlX2RhdGE7DQor
CXN0cnVjdCBkbWFfYnVmICpkbWFidWY7DQogCWludCBmZDsNCisJc2l6ZV90IGxlbjsNCiANCiAJ
aWYgKGhlYXBfYWxsb2NhdGlvbi0+ZmQpDQotCQlyZXR1cm4gLUVJTlZBTDsNCisJCXJldHVybiBF
UlJfUFRSKC1FSU5WQUwpOw0KIA0KIAlpZiAoaGVhcF9hbGxvY2F0aW9uLT5mZF9mbGFncyAmIH5E
TUFfSEVBUF9WQUxJRF9GRF9GTEFHUykNCi0JCXJldHVybiAtRUlOVkFMOw0KKwkJcmV0dXJuIEVS
Ul9QVFIoLUVJTlZBTCk7DQogDQogCWlmIChoZWFwX2FsbG9jYXRpb24tPmhlYXBfZmxhZ3MgJiB+
RE1BX0hFQVBfVkFMSURfSEVBUF9GTEFHUykNCi0JCXJldHVybiAtRUlOVkFMOw0KKwkJcmV0dXJu
IEVSUl9QVFIoLUVJTlZBTCk7DQorDQorCWxlbiA9IFBBR0VfQUxJR04oaGVhcF9hbGxvY2F0aW9u
LT5sZW4pOw0KKwlpZiAoIWxlbikNCisJCXJldHVybiBFUlJfUFRSKC1FSU5WQUwpOw0KKw0KKwlk
bWFidWYgPSBoZWFwLT5vcHMtPmFsbG9jYXRlKGhlYXAsIGxlbiwgaGVhcF9hbGxvY2F0aW9uLT5m
ZF9mbGFncywNCisJCQkJICAgICBoZWFwX2FsbG9jYXRpb24tPmhlYXBfZmxhZ3MpOw0KIA0KLQlm
ZCA9IGRtYV9oZWFwX2J1ZmZlcl9hbGxvYyhoZWFwLCBoZWFwX2FsbG9jYXRpb24tPmxlbiwNCi0J
CQkJICAgaGVhcF9hbGxvY2F0aW9uLT5mZF9mbGFncywNCi0JCQkJICAgaGVhcF9hbGxvY2F0aW9u
LT5oZWFwX2ZsYWdzKTsNCi0JaWYgKGZkIDwgMCkNCi0JCXJldHVybiBmZDsNCisJaWYgKElTX0VS
UihkbWFidWYpKQ0KKwkJcmV0dXJuIGRtYWJ1ZjsNCisNCisJZmQgPSBnZXRfdW51c2VkX2ZkX2Zs
YWdzKGhlYXBfYWxsb2NhdGlvbi0+ZmRfZmxhZ3MpOw0KKwlpZiAoZmQgPCAwKSB7DQorCQlkbWFf
YnVmX3B1dChkbWFidWYpOw0KKwkJcmV0dXJuIEVSUl9QVFIoZmQpOw0KKwl9DQogDQogCWhlYXBf
YWxsb2NhdGlvbi0+ZmQgPSBmZDsNCiANCi0JcmV0dXJuIDA7DQorCXJldHVybiBkbWFidWY7DQog
fQ0KIA0KIHN0YXRpYyB1bnNpZ25lZCBpbnQgZG1hX2hlYXBfaW9jdGxfY21kc1tdID0gew0KQEAg
LTEzOCw2ICsxMjMsOCBAQCBzdGF0aWMgbG9uZyBkbWFfaGVhcF9pb2N0bChzdHJ1Y3QgZmlsZSAq
ZmlsZSwgdW5zaWduZWQgaW50IHVjbWQsDQogCXVuc2lnbmVkIGludCBpbl9zaXplLCBvdXRfc2l6
ZSwgZHJ2X3NpemUsIGtzaXplOw0KIAlpbnQgbnIgPSBfSU9DX05SKHVjbWQpOw0KIAlpbnQgcmV0
ID0gMDsNCisJaW50IGZkOw0KKwlzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmOw0KIA0KIAlpZiAobnIg
Pj0gQVJSQVlfU0laRShkbWFfaGVhcF9pb2N0bF9jbWRzKSkNCiAJCXJldHVybiAtRUlOVkFMOw0K
QEAgLTE3NCwxNSArMTYxLDI4IEBAIHN0YXRpYyBsb25nIGRtYV9oZWFwX2lvY3RsKHN0cnVjdCBm
aWxlICpmaWxlLCB1bnNpZ25lZCBpbnQgdWNtZCwNCiANCiAJc3dpdGNoIChrY21kKSB7DQogCWNh
c2UgRE1BX0hFQVBfSU9DVExfQUxMT0M6DQotCQlyZXQgPSBkbWFfaGVhcF9pb2N0bF9hbGxvY2F0
ZShmaWxlLCBrZGF0YSk7DQorCQlkbWFidWYgPSBkbWFfaGVhcF9pb2N0bF9hbGxvY2F0ZShmaWxl
LCBrZGF0YSk7DQorDQorCQlpZiAoSVNfRVJSKGRtYWJ1ZikpIHsNCisJCQlyZXQgPSBQVFJfRVJS
KGRtYWJ1Zik7DQorCQkJYnJlYWs7DQorCQl9DQorDQorCQlmZCA9ICgoc3RydWN0IGRtYV9oZWFw
X2FsbG9jYXRpb25fZGF0YSAqKWtkYXRhKS0+ZmQ7DQorCQlpZiAoY29weV90b191c2VyKCh2b2lk
IF9fdXNlciAqKWFyZywga2RhdGEsIG91dF9zaXplKSAhPSAwKSB7DQorCQkJcHV0X3VudXNlZF9m
ZChmZCk7DQorCQkJZG1hX2J1Zl9wdXQoZG1hYnVmKTsNCisJCQlyZXQgPSAtRUZBVUxUOw0KKwkJ
fSBlbHNlIHsNCisJCQlkbWFfYnVmX2ZkX2luc3RhbGwoZG1hYnVmLCBmZCk7DQorCQl9DQorDQog
CQlicmVhazsNCiAJZGVmYXVsdDoNCiAJCXJldCA9IC1FTk9UVFk7DQogCQlnb3RvIGVycjsNCiAJ
fQ0KIA0KLQlpZiAoY29weV90b191c2VyKCh2b2lkIF9fdXNlciAqKWFyZywga2RhdGEsIG91dF9z
aXplKSAhPSAwKQ0KLQkJcmV0ID0gLUVGQVVMVDsNCiBlcnI6DQogCWlmIChrZGF0YSAhPSBzdGFj
a19rZGF0YSkNCiAJCWtmcmVlKGtkYXRhKTsNCmRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2Rt
YS1idWYuaCBiL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oDQppbmRleCBkMTIwM2RhNTZmYzUuLmQx
NWIyYjMxZDNjOSAxMDA2NDQNCi0tLSBhL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oDQorKysgYi9p
bmNsdWRlL2xpbnV4L2RtYS1idWYuaA0KQEAgLTU2Nyw2ICs1NjcsNyBAQCB2b2lkIGRtYV9idWZf
dW5waW4oc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoKTsNCiBzdHJ1Y3QgZG1hX2J1
ZiAqZG1hX2J1Zl9leHBvcnQoY29uc3Qgc3RydWN0IGRtYV9idWZfZXhwb3J0X2luZm8gKmV4cF9p
bmZvKTsNCiANCiBpbnQgZG1hX2J1Zl9mZChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLCBpbnQgZmxh
Z3MpOw0KK3ZvaWQgZG1hX2J1Zl9mZF9pbnN0YWxsKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsIGlu
dCBmZCk7DQogc3RydWN0IGRtYV9idWYgKmRtYV9idWZfZ2V0KGludCBmZCk7DQogdm9pZCBkbWFf
YnVmX3B1dChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmKTsNCiANCi0tIA0KMi4zNC4xDQoNCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9y
Zwo=
