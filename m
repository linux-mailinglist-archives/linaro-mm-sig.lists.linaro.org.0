Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id fmdAIMghVmrFzgAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 13:47:20 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 3733D754134
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 13:47:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b="CKKRSla/";
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=gmail.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4D9C3404D4
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 11:47:19 +0000 (UTC)
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
	by lists.linaro.org (Postfix) with ESMTPS id E788A401B9
	for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Jul 2026 11:47:16 +0000 (UTC)
Received: by mail-pj1-f46.google.com with SMTP id 98e67ed59e1d1-38a0c7e841fso960917a91.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Jul 2026 04:47:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784029636; x=1784634436; darn=lists.linaro.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=D6JbozRMrTeKv2vOMW74ecX1vJXvga7e7fLYQK001e4=;
        b=CKKRSla/fur5iGFb9HtSEYKj4jYyLAb09ELycF+268szDdrkdY0U3PiqwdcbWuwQhj
         bDYdNSh4ckCb/n2un9s1FXaROws16IVP5UQ4xkT4r1Y9zxbzgoc3zGLGNYUTefBoo8KI
         pDU8WVA07zc+pSadiY7tVJDFOxxBXz+egtQiPISwGIb0DmIn+0lizAumM6rhDacz/ku4
         VauBpqz8poWVCnU9fwI5SCsR2x8pbQmSwlg+aikOQBRXGOmDoyLNoFlK3GtXP0uadVXB
         QpmwLkJsOUMRk7dkAjr36TcYgrm3Prx4FqAVya5QRPabUXIcazOGbFJSXLd+XRjxqwMi
         SInQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784029636; x=1784634436;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=D6JbozRMrTeKv2vOMW74ecX1vJXvga7e7fLYQK001e4=;
        b=sk9P1Myxl8WP82NxuLs1QPB45RSlO+eL5LC3KOTD5cChMl68SGcZ9Kjdcq7afjDJGe
         KoIX+zHWV4EhvoKyqO1DSzVfdm6Yv5jUf7v/G++hJXyOQ6oWwvBlyF84QotInTRY3osU
         FXtMHSxnFLl810NQpMgrU2dluxfr1ua2Y1V9yIMiXQO7Bi63nFYpaaNTK/T8546MUr9R
         z1J/0vqtFW/AVoPWrnwQaxuoUDGzrpb8fW0zw5G3MmL9g7Brks2wG6xI6ExfeupMzmvD
         UaqpRqJXw1On/KFhdfJjjkDNFkpIT8zl0qbyMDAQT1wN4AgD1xuOQbdktaqI0ln4P48H
         443g==
X-Forwarded-Encrypted: i=1; AHgh+RqVag3BiCDfqCYgaXcR3bVyJtZSwkL4I96Fts7Y9RhSgJzZJvrljw/XBwxUYth7pQFcaioAQ1hGQXTPocZJ@lists.linaro.org
X-Gm-Message-State: AOJu0Yz9QobRE0Et+7PBh1d+1Lgxkjd+KSJHUcCij22v6bSvHBCS/0Eq
	J/Xn77U3WqCdh/1cNC/dWpRhCHtxRMbSHe7FggTDUfTQDxEjORozCA3A
X-Gm-Gg: AfdE7ckjuKCV/6v44cdDVCAkaKZjZ67pZIovsgpOm/n9NlQq48wOZH63RtLzv0d2McF
	/MSUfVsMA3V6VQd7lFLHVIzVJubKG23pd3XdbBTkPcIfMB7k3k3rgOEsMG46LHDDet+42x+eDZL
	AfnMcTcf7A+nx7/rt6fDm2TqecBVujVomGHnhQxDst4ePEzZAJEwsGVA61KmihDBp6qYY9W7vJg
	VDcR5ddws6nFyAj4ImxQYtXPpKDtxkNvvGTdfO2BcPzHcbQnox2l7rWzMduO0XWsUE6i6fCV3f3
	NWraWqnT0k4xpsiTpY4hSLnobCo/RvTUS1cV+ZY01q+6DytRf/22WFE2CjbI1x2kmBoSF22jQtv
	7P3V2aT1WZVTXfSsFMzATeMqPAXATzb2JDWQi9Y60mNInCMVqGUaMyE2mIZWfY2wYR1ZbDxHp9p
	I5RjmirI4TCQ3Kbn6W
X-Received: by 2002:a17:90b:3ccc:b0:37f:c2a8:ce45 with SMTP id 98e67ed59e1d1-38dc73b936emr12193575a91.4.1784029635683;
        Tue, 14 Jul 2026 04:47:15 -0700 (PDT)
Received: from baineng-pc.. ([117.133.183.252])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-38e17470008sm1356162a91.17.2026.07.14.04.47.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jul 2026 04:47:15 -0700 (PDT)
From: Baineng Shou <shoubaineng@gmail.com>
To: Sumit Semwal <sumit.semwal@linaro.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	"T . J . Mercier" <tjmercier@google.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Brian Starkey <Brian.Starkey@arm.com>,
	John Stultz <jstultz@google.com>,
	Sandeep Patil <sspatil@android.com>,
	"Andrew F . Davis" <afd@ti.com>,
	Srinivas Kandagatla <srini@kernel.org>
Date: Tue, 14 Jul 2026 19:46:53 +0800
Message-Id: <20260714114654.3885457-2-shoubaineng@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260714114654.3885457-1-shoubaineng@gmail.com>
References: <CABdmKX21NHc2=9Sk2F-BFpu6is0vTg-QXLE+wiFNEPdsWWjvog@mail.gmail.com>
 <20260714114654.3885457-1-shoubaineng@gmail.com>
MIME-Version: 1.0
X-Spamd-Bar: ---
Message-ID-Hash: 63POEHPP563XYUTYVOLGMM2GBIZP7WRV
X-Message-ID-Hash: 63POEHPP563XYUTYVOLGMM2GBIZP7WRV
X-MailFrom: shoubaineng@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: stable@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, Baineng Shou <shoubaineng@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3 1/2] dma-buf: dma-heap: don't publish fd before copy_to_user() succeeds
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/63POEHPP563XYUTYVOLGMM2GBIZP7WRV/>
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
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:tjmercier@google.com,m:benjamin.gaignard@collabora.com,m:Brian.Starkey@arm.com,m:jstultz@google.com,m:sspatil@android.com,m:afd@ti.com,m:srini@kernel.org,m:stable@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,m:linux-arm-msm@vger.kernel.org,m:shoubaineng@gmail.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER(0.00)[shoubaineng@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[16];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:from_smtp,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3733D754134

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
IHZpc2libGUgc3RhdGUgYmVoaW5kLg0KICA0LiBkbWFfYnVmX2ZkX2luc3RhbGwoKSAgICAgICBw
dWJsaXNoZXMgdGhlIGZkIGFuZCBlbWl0cyB0aGUNCiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgdHJhY2VfZG1hX2J1Zl9mZCB0cmFjZXBvaW50IC0tIGZyb20NCiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgaGVyZSBvbiB0aGUgaW9jdGwgY2Fubm90IGZhaWwuDQoNCkEgbmV3
IGRtYV9idWZfZmRfaW5zdGFsbCgpIGhlbHBlciBpcyBpbnRyb2R1Y2VkIGluIGRtYS1idWYuYyB0
byB3cmFwDQpmZF9pbnN0YWxsKCkgdG9nZXRoZXIgd2l0aCB0aGUgRE1BX0JVRl9UUkFDRSgpIGNh
bGwsIHByZXNlcnZpbmcgdGhlDQpleHBvcnQgdHJhY2luZyB0aGF0IGRtYV9idWZfZmQoKSBwcm92
aWRlcy4gIGRtYV9oZWFwX2lvY3RsX2FsbG9jYXRlKCkNCmlzIHJlZmFjdG9yZWQgdG8gcmV0dXJu
IHRoZSBzdHJ1Y3QgZG1hX2J1ZiAqIGRpcmVjdGx5IChyZXR1cm5pbmcNCkVSUl9QVFIgb24gZmFp
bHVyZSkgc28gdGhlIGNhbGxlciBob2xkcyB0aGUgZG1hYnVmIHJlZmVyZW5jZSBhY3Jvc3MNCnN0
ZXBzIDMgYW5kIDQuDQoNClRoZSBmYWlsdXJlIGF0IHN0ZXAgMyBpcyBlYXNpbHkgcmVhY2hhYmxl
IGZyb20gdXNlcnNwYWNlOiBwYXNzIGENCnN0cnVjdCBkbWFfaGVhcF9hbGxvY2F0aW9uX2RhdGEg
dGhhdCBsaXZlcyBpbiBhIHBhZ2Ugd2hvc2UgcHJvdGVjdGlvbg0KaXMgZmxpcHBlZCB0byBQUk9U
X1JFQUQgYmV0d2VlbiBjb3B5X2Zyb21fdXNlcigpIGFuZCBjb3B5X3RvX3VzZXIoKQ0KKGUuZy4g
dmlhIG1wcm90ZWN0KCkpLiAgQmVmb3JlIHRoaXMgY2hhbmdlIGVhY2ggc3VjaCBpb2N0bCBsZWFr
cyBvbmUNCmRtYWJ1ZiBmZDsgYWZ0ZXIgaXQsIHRoZSBmZCB0YWJsZSBpcyB1bmNoYW5nZWQgb24g
ZmFpbHVyZSBhbmQgb25seQ0KL2Rldi9kbWFfaGVhcC88bmFtZT4gcmVtYWlucyBvcGVuLg0KDQpO
byBVQVBJIG9yIGhlYXAtZHJpdmVyIGludGVyZmFjZSBjaGFuZ2UuDQoNClsxXSBodHRwczovL2xv
cmUua2VybmVsLm9yZy9kcmktZGV2ZWwvMTc1ZTk4ZGUtZjQxNC00N2Q3LTgxYzEtYzBmZTBhOGY3
ZjYyQGFtZC5jb20vDQoNCkZpeGVzOiBjMDJhODFmYmE3NGYgKCJkbWEtYnVmOiBBZGQgZG1hLWJ1
ZiBoZWFwcyBmcmFtZXdvcmsiKQ0KQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcNClJldmlld2Vk
LWJ5OiBULkouIE1lcmNpZXIgPHRqbWVyY2llckBnb29nbGUuY29tPg0KU2lnbmVkLW9mZi1ieTog
QmFpbmVuZyBTaG91IDxzaG91YmFpbmVuZ0BnbWFpbC5jb20+DQotLS0NCiBkcml2ZXJzL2RtYS1i
dWYvZG1hLWJ1Zi5jICB8IDIwICsrKysrKysrKysNCiBkcml2ZXJzL2RtYS1idWYvZG1hLWhlYXAu
YyB8IDgwICsrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0tDQogaW5jbHVkZS9s
aW51eC9kbWEtYnVmLmggICAgfCAgMSArDQogMyBmaWxlcyBjaGFuZ2VkLCA2MSBpbnNlcnRpb25z
KCspLCA0MCBkZWxldGlvbnMoLSkNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEt
YnVmLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQppbmRleCBkNTA0YzYzNmRjMjkuLjRj
OWFkZDUxZjllZiAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCisrKyBi
L2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCkBAIC04MDMsNiArODAzLDI2IEBAIGludCBkbWFf
YnVmX2ZkKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsIGludCBmbGFncykNCiB9DQogRVhQT1JUX1NZ
TUJPTF9OU19HUEwoZG1hX2J1Zl9mZCwgIkRNQV9CVUYiKTsNCiANCisvKioNCisgKiBkbWFfYnVm
X2ZkX2luc3RhbGwgLSBpbnN0YWxsIGEgcmVzZXJ2ZWQgZmQgZm9yIGEgZG1hLWJ1Zg0KKyAqIEBk
bWFidWY6CVtpbl0JcG9pbnRlciB0byBkbWFfYnVmDQorICogQGZkOgkJW2luXQlmZCByZXNlcnZl
ZCB3aXRoIGdldF91bnVzZWRfZmRfZmxhZ3MoKQ0KKyAqDQorICogUHVibGlzaGVzIGEgcHJldmlv
dXNseSByZXNlcnZlZCBmZCBpbnRvIHRoZSBjYWxsZXIncyBmZCB0YWJsZS4NCisgKiBNdXN0IG9u
bHkgYmUgY2FsbGVkIGFmdGVyIGFsbCBmYWxsaWJsZSB3b3JrIChlLmcuIGNvcHlfdG9fdXNlcikN
CisgKiBoYXMgc3VjY2VlZGVkLCBhcyBpdCBjYW5ub3QgYmUgdW5kb25lIHNhZmVseSBvbmNlIGNh
bGxlZC4NCisgKg0KKyAqIFRoZSBjYWxsZXIgaXMgcmVzcG9uc2libGUgZm9yIGhhdmluZyBlbWl0
dGVkIHRoZSB0cmFjZSBldmVudA0KKyAqICh2aWEgZG1hX2J1Zl9mZCgpIG9yIGdldF91bnVzZWRf
ZmRfZmxhZ3MoKSArIHRoaXMgZnVuY3Rpb24pDQorICogYmVmb3JlIGNhbGxpbmcgdGhpcy4NCisg
Ki8NCit2b2lkIGRtYV9idWZfZmRfaW5zdGFsbChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLCBpbnQg
ZmQpDQorew0KKwlETUFfQlVGX1RSQUNFKHRyYWNlX2RtYV9idWZfZmQsIGRtYWJ1ZiwgZmQpOw0K
KwlmZF9pbnN0YWxsKGZkLCBkbWFidWYtPmZpbGUpOw0KK30NCitFWFBPUlRfU1lNQk9MX05TX0dQ
TChkbWFfYnVmX2ZkX2luc3RhbGwsICJETUFfQlVGIik7DQorDQogLyoqDQogICogZG1hX2J1Zl9n
ZXQgLSByZXR1cm5zIHRoZSBzdHJ1Y3QgZG1hX2J1ZiByZWxhdGVkIHRvIGFuIGZkDQogICogQGZk
OglbaW5dCWZkIGFzc29jaWF0ZWQgd2l0aCB0aGUgc3RydWN0IGRtYV9idWYgdG8gYmUgcmV0dXJu
ZWQNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWhlYXAuYyBiL2RyaXZlcnMvZG1h
LWJ1Zi9kbWEtaGVhcC5jDQppbmRleCBhNzZiZjNmOGIwNzEuLjQzYzMyZmIyODMxMyAxMDA2NDQN
Ci0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtaGVhcC5jDQorKysgYi9kcml2ZXJzL2RtYS1idWYv
ZG1hLWhlYXAuYw0KQEAgLTU1LDMzICs1NSw2IEBAIE1PRFVMRV9QQVJNX0RFU0MobWVtX2FjY291
bnRpbmcsDQogCQkgIkVuYWJsZSBjZ3JvdXAtYmFzZWQgbWVtb3J5IGFjY291bnRpbmcgZm9yIGRt
YS1idWYgaGVhcCBhbGxvY2F0aW9ucyAoZGVmYXVsdD1mYWxzZSkuIik7DQogRVhQT1JUX1NZTUJP
TF9OU19HUEwobWVtX2FjY291bnRpbmcsICJETUFfQlVGX0hFQVAiKTsNCiANCi1zdGF0aWMgaW50
IGRtYV9oZWFwX2J1ZmZlcl9hbGxvYyhzdHJ1Y3QgZG1hX2hlYXAgKmhlYXAsIHNpemVfdCBsZW4s
DQotCQkJCSB1MzIgZmRfZmxhZ3MsDQotCQkJCSB1NjQgaGVhcF9mbGFncykNCi17DQotCXN0cnVj
dCBkbWFfYnVmICpkbWFidWY7DQotCWludCBmZDsNCi0NCi0JLyoNCi0JICogQWxsb2NhdGlvbnMg
ZnJvbSBhbGwgaGVhcHMgaGF2ZSB0byBiZWdpbg0KLQkgKiBhbmQgZW5kIG9uIHBhZ2UgYm91bmRh
cmllcy4NCi0JICovDQotCWxlbiA9IFBBR0VfQUxJR04obGVuKTsNCi0JaWYgKCFsZW4pDQotCQly
ZXR1cm4gLUVJTlZBTDsNCi0NCi0JZG1hYnVmID0gaGVhcC0+b3BzLT5hbGxvY2F0ZShoZWFwLCBs
ZW4sIGZkX2ZsYWdzLCBoZWFwX2ZsYWdzKTsNCi0JaWYgKElTX0VSUihkbWFidWYpKQ0KLQkJcmV0
dXJuIFBUUl9FUlIoZG1hYnVmKTsNCi0NCi0JZmQgPSBkbWFfYnVmX2ZkKGRtYWJ1ZiwgZmRfZmxh
Z3MpOw0KLQlpZiAoZmQgPCAwKSB7DQotCQlkbWFfYnVmX3B1dChkbWFidWYpOw0KLQkJLyoganVz
dCByZXR1cm4sIGFzIHB1dCB3aWxsIGNhbGwgcmVsZWFzZSBhbmQgdGhhdCB3aWxsIGZyZWUgKi8N
Ci0JfQ0KLQlyZXR1cm4gZmQ7DQotfQ0KLQ0KIHN0YXRpYyBpbnQgZG1hX2hlYXBfb3BlbihzdHJ1
Y3QgaW5vZGUgKmlub2RlLCBzdHJ1Y3QgZmlsZSAqZmlsZSkNCiB7DQogCXN0cnVjdCBkbWFfaGVh
cCAqaGVhcDsNCkBAIC05OSwzMCArNzIsNDIgQEAgc3RhdGljIGludCBkbWFfaGVhcF9vcGVuKHN0
cnVjdCBpbm9kZSAqaW5vZGUsIHN0cnVjdCBmaWxlICpmaWxlKQ0KIAlyZXR1cm4gMDsNCiB9DQog
DQotc3RhdGljIGxvbmcgZG1hX2hlYXBfaW9jdGxfYWxsb2NhdGUoc3RydWN0IGZpbGUgKmZpbGUs
IHZvaWQgKmRhdGEpDQorc3RhdGljIHN0cnVjdCBkbWFfYnVmICpkbWFfaGVhcF9pb2N0bF9hbGxv
Y2F0ZShzdHJ1Y3QgZmlsZSAqZmlsZSwgdm9pZCAqZGF0YSkNCiB7DQogCXN0cnVjdCBkbWFfaGVh
cF9hbGxvY2F0aW9uX2RhdGEgKmhlYXBfYWxsb2NhdGlvbiA9IGRhdGE7DQogCXN0cnVjdCBkbWFf
aGVhcCAqaGVhcCA9IGZpbGUtPnByaXZhdGVfZGF0YTsNCisJc3RydWN0IGRtYV9idWYgKmRtYWJ1
ZjsNCiAJaW50IGZkOw0KKwlzaXplX3QgbGVuOw0KIA0KIAlpZiAoaGVhcF9hbGxvY2F0aW9uLT5m
ZCkNCi0JCXJldHVybiAtRUlOVkFMOw0KKwkJcmV0dXJuIEVSUl9QVFIoLUVJTlZBTCk7DQogDQog
CWlmIChoZWFwX2FsbG9jYXRpb24tPmZkX2ZsYWdzICYgfkRNQV9IRUFQX1ZBTElEX0ZEX0ZMQUdT
KQ0KLQkJcmV0dXJuIC1FSU5WQUw7DQorCQlyZXR1cm4gRVJSX1BUUigtRUlOVkFMKTsNCiANCiAJ
aWYgKGhlYXBfYWxsb2NhdGlvbi0+aGVhcF9mbGFncyAmIH5ETUFfSEVBUF9WQUxJRF9IRUFQX0ZM
QUdTKQ0KLQkJcmV0dXJuIC1FSU5WQUw7DQorCQlyZXR1cm4gRVJSX1BUUigtRUlOVkFMKTsNCisN
CisJbGVuID0gUEFHRV9BTElHTihoZWFwX2FsbG9jYXRpb24tPmxlbik7DQorCWlmICghbGVuKQ0K
KwkJcmV0dXJuIEVSUl9QVFIoLUVJTlZBTCk7DQorDQorCWRtYWJ1ZiA9IGhlYXAtPm9wcy0+YWxs
b2NhdGUoaGVhcCwgbGVuLCBoZWFwX2FsbG9jYXRpb24tPmZkX2ZsYWdzLA0KKwkJCQkgICAgIGhl
YXBfYWxsb2NhdGlvbi0+aGVhcF9mbGFncyk7DQogDQotCWZkID0gZG1hX2hlYXBfYnVmZmVyX2Fs
bG9jKGhlYXAsIGhlYXBfYWxsb2NhdGlvbi0+bGVuLA0KLQkJCQkgICBoZWFwX2FsbG9jYXRpb24t
PmZkX2ZsYWdzLA0KLQkJCQkgICBoZWFwX2FsbG9jYXRpb24tPmhlYXBfZmxhZ3MpOw0KLQlpZiAo
ZmQgPCAwKQ0KLQkJcmV0dXJuIGZkOw0KKwlpZiAoSVNfRVJSKGRtYWJ1ZikpDQorCQlyZXR1cm4g
ZG1hYnVmOw0KKw0KKwlmZCA9IGdldF91bnVzZWRfZmRfZmxhZ3MoaGVhcF9hbGxvY2F0aW9uLT5m
ZF9mbGFncyk7DQorCWlmIChmZCA8IDApIHsNCisJCWRtYV9idWZfcHV0KGRtYWJ1Zik7DQorCQly
ZXR1cm4gRVJSX1BUUihmZCk7DQorCX0NCiANCiAJaGVhcF9hbGxvY2F0aW9uLT5mZCA9IGZkOw0K
IA0KLQlyZXR1cm4gMDsNCisJcmV0dXJuIGRtYWJ1ZjsNCiB9DQogDQogc3RhdGljIHVuc2lnbmVk
IGludCBkbWFfaGVhcF9pb2N0bF9jbWRzW10gPSB7DQpAQCAtMTM4LDYgKzEyMyw4IEBAIHN0YXRp
YyBsb25nIGRtYV9oZWFwX2lvY3RsKHN0cnVjdCBmaWxlICpmaWxlLCB1bnNpZ25lZCBpbnQgdWNt
ZCwNCiAJdW5zaWduZWQgaW50IGluX3NpemUsIG91dF9zaXplLCBkcnZfc2l6ZSwga3NpemU7DQog
CWludCBuciA9IF9JT0NfTlIodWNtZCk7DQogCWludCByZXQgPSAwOw0KKwlpbnQgZmQ7DQorCXN0
cnVjdCBkbWFfYnVmICpkbWFidWY7DQogDQogCWlmIChuciA+PSBBUlJBWV9TSVpFKGRtYV9oZWFw
X2lvY3RsX2NtZHMpKQ0KIAkJcmV0dXJuIC1FSU5WQUw7DQpAQCAtMTc0LDE1ICsxNjEsMjggQEAg
c3RhdGljIGxvbmcgZG1hX2hlYXBfaW9jdGwoc3RydWN0IGZpbGUgKmZpbGUsIHVuc2lnbmVkIGlu
dCB1Y21kLA0KIA0KIAlzd2l0Y2ggKGtjbWQpIHsNCiAJY2FzZSBETUFfSEVBUF9JT0NUTF9BTExP
QzoNCi0JCXJldCA9IGRtYV9oZWFwX2lvY3RsX2FsbG9jYXRlKGZpbGUsIGtkYXRhKTsNCisJCWRt
YWJ1ZiA9IGRtYV9oZWFwX2lvY3RsX2FsbG9jYXRlKGZpbGUsIGtkYXRhKTsNCisNCisJCWlmIChJ
U19FUlIoZG1hYnVmKSkgew0KKwkJCXJldCA9IFBUUl9FUlIoZG1hYnVmKTsNCisJCQlicmVhazsN
CisJCX0NCisNCisJCWZkID0gKChzdHJ1Y3QgZG1hX2hlYXBfYWxsb2NhdGlvbl9kYXRhICopa2Rh
dGEpLT5mZDsNCisJCWlmIChjb3B5X3RvX3VzZXIoKHZvaWQgX191c2VyICopYXJnLCBrZGF0YSwg
b3V0X3NpemUpICE9IDApIHsNCisJCQlwdXRfdW51c2VkX2ZkKGZkKTsNCisJCQlkbWFfYnVmX3B1
dChkbWFidWYpOw0KKwkJCXJldCA9IC1FRkFVTFQ7DQorCQl9IGVsc2Ugew0KKwkJCWRtYV9idWZf
ZmRfaW5zdGFsbChkbWFidWYsIGZkKTsNCisJCX0NCisNCiAJCWJyZWFrOw0KIAlkZWZhdWx0Og0K
IAkJcmV0ID0gLUVOT1RUWTsNCiAJCWdvdG8gZXJyOw0KIAl9DQogDQotCWlmIChjb3B5X3RvX3Vz
ZXIoKHZvaWQgX191c2VyICopYXJnLCBrZGF0YSwgb3V0X3NpemUpICE9IDApDQotCQlyZXQgPSAt
RUZBVUxUOw0KIGVycjoNCiAJaWYgKGtkYXRhICE9IHN0YWNrX2tkYXRhKQ0KIAkJa2ZyZWUoa2Rh
dGEpOw0KZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oIGIvaW5jbHVkZS9saW51
eC9kbWEtYnVmLmgNCmluZGV4IGQxMjAzZGE1NmZjNS4uZDE1YjJiMzFkM2M5IDEwMDY0NA0KLS0t
IGEvaW5jbHVkZS9saW51eC9kbWEtYnVmLmgNCisrKyBiL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5o
DQpAQCAtNTY3LDYgKzU2Nyw3IEBAIHZvaWQgZG1hX2J1Zl91bnBpbihzdHJ1Y3QgZG1hX2J1Zl9h
dHRhY2htZW50ICphdHRhY2gpOw0KIHN0cnVjdCBkbWFfYnVmICpkbWFfYnVmX2V4cG9ydChjb25z
dCBzdHJ1Y3QgZG1hX2J1Zl9leHBvcnRfaW5mbyAqZXhwX2luZm8pOw0KIA0KIGludCBkbWFfYnVm
X2ZkKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsIGludCBmbGFncyk7DQordm9pZCBkbWFfYnVmX2Zk
X2luc3RhbGwoc3RydWN0IGRtYV9idWYgKmRtYWJ1ZiwgaW50IGZkKTsNCiBzdHJ1Y3QgZG1hX2J1
ZiAqZG1hX2J1Zl9nZXQoaW50IGZkKTsNCiB2b2lkIGRtYV9idWZfcHV0KHN0cnVjdCBkbWFfYnVm
ICpkbWFidWYpOw0KIA0KLS0gDQoyLjM0LjENCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJv
LW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8g
bGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
