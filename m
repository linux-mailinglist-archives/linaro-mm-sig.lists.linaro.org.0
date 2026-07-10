Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id uUo/JzvQUGqp5QIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Jul 2026 12:58:03 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 05E42739E78
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Jul 2026 12:58:03 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b=LAP5dbqB;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=gmail.com (policy=none);
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org"
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 00EBA40D71
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Jul 2026 10:58:02 +0000 (UTC)
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	by lists.linaro.org (Postfix) with ESMTPS id 342FE40C71
	for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Jul 2026 10:57:50 +0000 (UTC)
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-2ce87c7e3bbso6002105ad.1
        for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Jul 2026 03:57:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783681069; x=1784285869; darn=lists.linaro.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=PsFAzR3CSZqnZYplCGUu2npXvnWQSXy7x7Ru3MpsHV4=;
        b=LAP5dbqBIFwmAkph+BXyDaY4Iv1HWnkb845V6s0KL04HONQN1o//wJVguRLm4SXLht
         kozvhu95TfrV/yooajaDsZ2cpO0/8JxnIOgkiehf88rvbLEm2NXppDmqzlVYm/giMHWU
         H2za12NB9SaVewvHVEefUsooRMSvBucNXXBOl9surj5zTzYW4S7BTciDMss0YxF7TiAh
         kW3Pod7N72FPVYZxShoxYLvOQ7EmBXG2LzfCRJ/tVJWi2lfrYLeiy59MyQ7Es33bhWxc
         22vATgxivKVJYV9nEzJxEkOwzmduCALWjXk4/sKCyB1hclcxnbaiw6Ic5TKB646s4Y3Z
         f3LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783681069; x=1784285869;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=PsFAzR3CSZqnZYplCGUu2npXvnWQSXy7x7Ru3MpsHV4=;
        b=kYg70ImjJV6wWrcjM7MMi0SwrnF8kC3s0t0YTmwvgAKrkyzgekTeknlc/lCbk3S3bC
         822AH+8BD9KG08YYJqTX4feWKCn6wBoAPliPtei3Zt52wj+xv8AE0tPqeKjSRRlhH2Bg
         Jnd2Mm3C4ANhzeCXmUeSBKd690ljxcFu6kqIgL3/kaxFQYGpYtTlnqhlQ+uzH/rBpqlA
         r4X4sIUcAGoZ3jQfiS+4cslzBOZ3JIFUUJ1CA6c/LTup6qMSfFjT+Yj4cNvrgU+Igqpb
         bX3Ss0wGaOyl9vkcHfjWZey8/FOkmMac+O8big/NSdi1ixJjDY9793biFlE7Re+o4WkK
         0n7w==
X-Forwarded-Encrypted: i=1; AHgh+Rpn/NT4hI+QW/YFB8V4dVxTuIwZ78DlwSQdGhVqYcb+9raruTdeGd4pAM69I4evTU5sEK6KQnCJpdb6UaH6@lists.linaro.org
X-Gm-Message-State: AOJu0YzCNGw33BxC/q/mXSUL1kMcm/K7a7aYQ5W7FH31ZCJyKtnC7qAO
	SJcPZK4wjZtiw+yYo+6HxLWqp7AGErN0E6NARMwTMRemDxZ89S3QKPS2
X-Gm-Gg: AfdE7cmiOymV8n+Hm9yXJ5TnaUQOsWg6MhSxFki79+2elYSgwGojHbhI5Nw4YJO6gqu
	qn0EMzZFjmaJtPWHTfeIA6w/cZZCxmI/m+LveGqdYpEuU+9g1BK2lqXpQxDN2heNpqb6dqrQTdF
	1K17tOmCYp2SPuAez5MJf14XptOdAuJ3ciPRvBZsC0ZLZ8NwAMX1s/pQBKUW7c26okX2QqkrktI
	kuwz4dzgzRqNUWIJt0HTzhFQk4SVy+AqzBET2I5aYq5bqZcPN0MF+/MKfEArdO6lcO4bBNwf698
	nR/LlnwOikd+7jFOoTzeGxmC70Hu51Ia+Pnhcfr5jhTDBjXZBW8c3hE3CNKcjQvmv0COPD9MgB6
	+2aR901EB2OMOwuoIscF0AybLVy29f7PYF1myINgOji2MneTVHbqVjeYSUsOmMwR8XR1VRgLfw+
	qGMbIN3iAU3MIUVw3Q
X-Received: by 2002:a17:903:2346:b0:2ca:f8ef:33dc with SMTP id d9443c01a7336-2ccea477e93mr109979655ad.40.1783681069120;
        Fri, 10 Jul 2026 03:57:49 -0700 (PDT)
Received: from baineng-pc.. ([117.133.183.252])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ccc9d5bdf5sm57922095ad.73.2026.07.10.03.57.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jul 2026 03:57:48 -0700 (PDT)
From: Baineng Shou <shoubaineng@gmail.com>
To: Sumit Semwal <sumit.semwal@linaro.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Brian Starkey <Brian.Starkey@arm.com>,
	John Stultz <jstultz@google.com>,
	"T . J . Mercier" <tjmercier@google.com>,
	Sandeep Patil <sspatil@android.com>,
	"Andrew F . Davis" <afd@ti.com>
Date: Fri, 10 Jul 2026 18:57:40 +0800
Message-Id: <20260710105740.3080070-1-shoubaineng@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260703080922.1838362-1-shoubaineng@gmail.com>
References: <20260703080922.1838362-1-shoubaineng@gmail.com>
MIME-Version: 1.0
X-Spamd-Bar: ---
Message-ID-Hash: 5XUG2ELS5TRHSCEJQT55RTGET4445ANT
X-Message-ID-Hash: 5XUG2ELS5TRHSCEJQT55RTGET4445ANT
X-MailFrom: shoubaineng@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: stable@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Baineng Shou <shoubaineng@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2] dma-buf: dma-heap: don't publish fd before copy_to_user() succeeds
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5XUG2ELS5TRHSCEJQT55RTGET4445ANT/>
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
	FORGED_RECIPIENTS(0.00)[m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:benjamin.gaignard@collabora.com,m:Brian.Starkey@arm.com,m:jstultz@google.com,m:tjmercier@google.com,m:sspatil@android.com,m:afd@ti.com,m:stable@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,m:shoubaineng@gmail.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER(0.00)[shoubaineng@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shoubaineng@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,gmail.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 05E42739E78

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
Pg0KLS0tDQogZHJpdmVycy9kbWEtYnVmL2RtYS1oZWFwLmMgfCA4MCArKysrKysrKysrKysrKysr
KysrLS0tLS0tLS0tLS0tLS0tLS0tLQ0KIDEgZmlsZSBjaGFuZ2VkLCA0MCBpbnNlcnRpb25zKCsp
LCA0MCBkZWxldGlvbnMoLSkNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtaGVh
cC5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1oZWFwLmMNCmluZGV4IGE3NmJmM2Y4YjA3MS4uMGE5
YmY2MmViMDZjIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1oZWFwLmMNCisrKyBi
L2RyaXZlcnMvZG1hLWJ1Zi9kbWEtaGVhcC5jDQpAQCAtNTUsMzMgKzU1LDYgQEAgTU9EVUxFX1BB
Uk1fREVTQyhtZW1fYWNjb3VudGluZywNCiAJCSAiRW5hYmxlIGNncm91cC1iYXNlZCBtZW1vcnkg
YWNjb3VudGluZyBmb3IgZG1hLWJ1ZiBoZWFwIGFsbG9jYXRpb25zIChkZWZhdWx0PWZhbHNlKS4i
KTsNCiBFWFBPUlRfU1lNQk9MX05TX0dQTChtZW1fYWNjb3VudGluZywgIkRNQV9CVUZfSEVBUCIp
Ow0KIA0KLXN0YXRpYyBpbnQgZG1hX2hlYXBfYnVmZmVyX2FsbG9jKHN0cnVjdCBkbWFfaGVhcCAq
aGVhcCwgc2l6ZV90IGxlbiwNCi0JCQkJIHUzMiBmZF9mbGFncywNCi0JCQkJIHU2NCBoZWFwX2Zs
YWdzKQ0KLXsNCi0Jc3RydWN0IGRtYV9idWYgKmRtYWJ1ZjsNCi0JaW50IGZkOw0KLQ0KLQkvKg0K
LQkgKiBBbGxvY2F0aW9ucyBmcm9tIGFsbCBoZWFwcyBoYXZlIHRvIGJlZ2luDQotCSAqIGFuZCBl
bmQgb24gcGFnZSBib3VuZGFyaWVzLg0KLQkgKi8NCi0JbGVuID0gUEFHRV9BTElHTihsZW4pOw0K
LQlpZiAoIWxlbikNCi0JCXJldHVybiAtRUlOVkFMOw0KLQ0KLQlkbWFidWYgPSBoZWFwLT5vcHMt
PmFsbG9jYXRlKGhlYXAsIGxlbiwgZmRfZmxhZ3MsIGhlYXBfZmxhZ3MpOw0KLQlpZiAoSVNfRVJS
KGRtYWJ1ZikpDQotCQlyZXR1cm4gUFRSX0VSUihkbWFidWYpOw0KLQ0KLQlmZCA9IGRtYV9idWZf
ZmQoZG1hYnVmLCBmZF9mbGFncyk7DQotCWlmIChmZCA8IDApIHsNCi0JCWRtYV9idWZfcHV0KGRt
YWJ1Zik7DQotCQkvKiBqdXN0IHJldHVybiwgYXMgcHV0IHdpbGwgY2FsbCByZWxlYXNlIGFuZCB0
aGF0IHdpbGwgZnJlZSAqLw0KLQl9DQotCXJldHVybiBmZDsNCi19DQotDQogc3RhdGljIGludCBk
bWFfaGVhcF9vcGVuKHN0cnVjdCBpbm9kZSAqaW5vZGUsIHN0cnVjdCBmaWxlICpmaWxlKQ0KIHsN
CiAJc3RydWN0IGRtYV9oZWFwICpoZWFwOw0KQEAgLTk5LDMwICs3Miw0MiBAQCBzdGF0aWMgaW50
IGRtYV9oZWFwX29wZW4oc3RydWN0IGlub2RlICppbm9kZSwgc3RydWN0IGZpbGUgKmZpbGUpDQog
CXJldHVybiAwOw0KIH0NCiANCi1zdGF0aWMgbG9uZyBkbWFfaGVhcF9pb2N0bF9hbGxvY2F0ZShz
dHJ1Y3QgZmlsZSAqZmlsZSwgdm9pZCAqZGF0YSkNCitzdGF0aWMgc3RydWN0IGRtYV9idWYgKmRt
YV9oZWFwX2lvY3RsX2FsbG9jYXRlKHN0cnVjdCBmaWxlICpmaWxlLCB2b2lkICpkYXRhKQ0KIHsN
CiAJc3RydWN0IGRtYV9oZWFwX2FsbG9jYXRpb25fZGF0YSAqaGVhcF9hbGxvY2F0aW9uID0gZGF0
YTsNCiAJc3RydWN0IGRtYV9oZWFwICpoZWFwID0gZmlsZS0+cHJpdmF0ZV9kYXRhOw0KKwlzdHJ1
Y3QgZG1hX2J1ZiAqZG1hYnVmOw0KIAlpbnQgZmQ7DQorCXNpemVfdCBsZW47DQogDQogCWlmICho
ZWFwX2FsbG9jYXRpb24tPmZkKQ0KLQkJcmV0dXJuIC1FSU5WQUw7DQorCQlyZXR1cm4gRVJSX1BU
UigtRUlOVkFMKTsNCiANCiAJaWYgKGhlYXBfYWxsb2NhdGlvbi0+ZmRfZmxhZ3MgJiB+RE1BX0hF
QVBfVkFMSURfRkRfRkxBR1MpDQotCQlyZXR1cm4gLUVJTlZBTDsNCisJCXJldHVybiBFUlJfUFRS
KC1FSU5WQUwpOw0KIA0KIAlpZiAoaGVhcF9hbGxvY2F0aW9uLT5oZWFwX2ZsYWdzICYgfkRNQV9I
RUFQX1ZBTElEX0hFQVBfRkxBR1MpDQotCQlyZXR1cm4gLUVJTlZBTDsNCisJCXJldHVybiBFUlJf
UFRSKC1FSU5WQUwpOw0KKw0KKwlsZW4gPSBQQUdFX0FMSUdOKGhlYXBfYWxsb2NhdGlvbi0+bGVu
KTsNCisJaWYgKCFsZW4pDQorCQlyZXR1cm4gRVJSX1BUUigtRUlOVkFMKTsNCisNCisJZG1hYnVm
ID0gaGVhcC0+b3BzLT5hbGxvY2F0ZShoZWFwLCBsZW4sIGhlYXBfYWxsb2NhdGlvbi0+ZmRfZmxh
Z3MsDQorCQkJCSAgICAgaGVhcF9hbGxvY2F0aW9uLT5oZWFwX2ZsYWdzKTsNCiANCi0JZmQgPSBk
bWFfaGVhcF9idWZmZXJfYWxsb2MoaGVhcCwgaGVhcF9hbGxvY2F0aW9uLT5sZW4sDQotCQkJCSAg
IGhlYXBfYWxsb2NhdGlvbi0+ZmRfZmxhZ3MsDQotCQkJCSAgIGhlYXBfYWxsb2NhdGlvbi0+aGVh
cF9mbGFncyk7DQotCWlmIChmZCA8IDApDQotCQlyZXR1cm4gZmQ7DQorCWlmIChJU19FUlIoZG1h
YnVmKSkNCisJCXJldHVybiBkbWFidWY7DQorDQorCWZkID0gZ2V0X3VudXNlZF9mZF9mbGFncyho
ZWFwX2FsbG9jYXRpb24tPmZkX2ZsYWdzKTsNCisJaWYgKGZkIDwgMCkgew0KKwkJZG1hX2J1Zl9w
dXQoZG1hYnVmKTsNCisJCXJldHVybiBFUlJfUFRSKGZkKTsNCisJfQ0KIA0KIAloZWFwX2FsbG9j
YXRpb24tPmZkID0gZmQ7DQogDQotCXJldHVybiAwOw0KKwlyZXR1cm4gZG1hYnVmOw0KIH0NCiAN
CiBzdGF0aWMgdW5zaWduZWQgaW50IGRtYV9oZWFwX2lvY3RsX2NtZHNbXSA9IHsNCkBAIC0xMzgs
NiArMTIzLDggQEAgc3RhdGljIGxvbmcgZG1hX2hlYXBfaW9jdGwoc3RydWN0IGZpbGUgKmZpbGUs
IHVuc2lnbmVkIGludCB1Y21kLA0KIAl1bnNpZ25lZCBpbnQgaW5fc2l6ZSwgb3V0X3NpemUsIGRy
dl9zaXplLCBrc2l6ZTsNCiAJaW50IG5yID0gX0lPQ19OUih1Y21kKTsNCiAJaW50IHJldCA9IDA7
DQorCWludCBmZDsNCisJc3RydWN0IGRtYV9idWYgKmRtYWJ1ZjsNCiANCiAJaWYgKG5yID49IEFS
UkFZX1NJWkUoZG1hX2hlYXBfaW9jdGxfY21kcykpDQogCQlyZXR1cm4gLUVJTlZBTDsNCkBAIC0x
NzQsMTUgKzE2MSwyOCBAQCBzdGF0aWMgbG9uZyBkbWFfaGVhcF9pb2N0bChzdHJ1Y3QgZmlsZSAq
ZmlsZSwgdW5zaWduZWQgaW50IHVjbWQsDQogDQogCXN3aXRjaCAoa2NtZCkgew0KIAljYXNlIERN
QV9IRUFQX0lPQ1RMX0FMTE9DOg0KLQkJcmV0ID0gZG1hX2hlYXBfaW9jdGxfYWxsb2NhdGUoZmls
ZSwga2RhdGEpOw0KKwkJZG1hYnVmID0gZG1hX2hlYXBfaW9jdGxfYWxsb2NhdGUoZmlsZSwga2Rh
dGEpOw0KKw0KKwkJaWYgKElTX0VSUihkbWFidWYpKSB7DQorCQkJcmV0ID0gUFRSX0VSUihkbWFi
dWYpOw0KKwkJCWJyZWFrOw0KKwkJfQ0KKw0KKwkJZmQgPSAoKHN0cnVjdCBkbWFfaGVhcF9hbGxv
Y2F0aW9uX2RhdGEgKilrZGF0YSktPmZkOw0KKwkJaWYgKGNvcHlfdG9fdXNlcigodm9pZCBfX3Vz
ZXIgKilhcmcsIGtkYXRhLCBvdXRfc2l6ZSkgIT0gMCkgew0KKwkJCXB1dF91bnVzZWRfZmQoZmQp
Ow0KKwkJCWRtYV9idWZfcHV0KGRtYWJ1Zik7DQorCQkJcmV0ID0gLUVGQVVMVDsNCisJCX0gZWxz
ZSB7DQorCQkJZmRfaW5zdGFsbChmZCwgZG1hYnVmLT5maWxlKTsNCisJCX0NCisNCiAJCWJyZWFr
Ow0KIAlkZWZhdWx0Og0KIAkJcmV0ID0gLUVOT1RUWTsNCiAJCWdvdG8gZXJyOw0KIAl9DQogDQot
CWlmIChjb3B5X3RvX3VzZXIoKHZvaWQgX191c2VyICopYXJnLCBrZGF0YSwgb3V0X3NpemUpICE9
IDApDQotCQlyZXQgPSAtRUZBVUxUOw0KIGVycjoNCiAJaWYgKGtkYXRhICE9IHN0YWNrX2tkYXRh
KQ0KIAkJa2ZyZWUoa2RhdGEpOw0KLS0gDQoyLjM0LjENCg0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0g
bGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1h
aWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
