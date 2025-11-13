Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kOuOMQP94GlloAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:15:15 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A8CB2410660
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:15:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C3C00409B3
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:15:14 +0000 (UTC)
Received: from mout-p-202.mailbox.org (mout-p-202.mailbox.org [80.241.56.172])
	by lists.linaro.org (Postfix) with ESMTPS id 0E19F3F845
	for <linaro-mm-sig@lists.linaro.org>; Thu, 13 Nov 2025 16:23:26 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mailbox.org header.s=mail20150812 header.b=u4iY0wfv;
	dmarc=pass (policy=reject) header.from=mailbox.org;
	spf=pass (lists.linaro.org: domain of phasta@mailbox.org designates 80.241.56.172 as permitted sender) smtp.mailfrom=phasta@mailbox.org
Received: from smtp202.mailbox.org (smtp202.mailbox.org [10.196.197.202])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-202.mailbox.org (Postfix) with ESMTPS id 4d6lty4yJVz9sp0;
	Thu, 13 Nov 2025 17:23:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1763051002; h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=EpvkBNKd/xPBaK17iPRIIBTgOGDAPant06qZh/pNZ7A=;
	b=u4iY0wfvZpuFW3vnC1wLS28SwWjVe6pgdXg/IQqlc57JmztDcLMZUWEQGnfSARvXBDIdJk
	XYXl4exYgRHnmYe0FhQqrsHNap1edltyNnnCGfjc4J4iyyJ3bubOaeImI8e7K9ypy/X+Y9
	v0Klsx+yv2kvdCFwRNCnJmngiORUhCCDmjPV5Nec/8EjeHiuTNcQj1mwZ03kUqumTTBKBI
	2aqgnMiIXb+YUBY8nDjrOHuytahnJ+xNNYKKuA0Ob5St9X+ddqKxGsB0l/Dttg4CgSGn7Z
	iWgJnRfmxqgDbaKMTDFYMGLk2mJMdFIij5uLN7IfncJd/M+XRJhrLepV+06lzw==
Message-ID: <cfa60e2d9902602c41b277fd8bd254576b2f4187.camel@mailbox.org>
From: Philipp Stanner <phasta@mailbox.org>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
	alexdeucher@gmail.com, simona.vetter@ffwll.ch, tursulin@ursulin.net,
	matthew.brost@intel.com, dri-devel@lists.freedesktop.org,
	amd-gfx@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
	sumit.semwal@linaro.org
Date: Thu, 13 Nov 2025 17:23:19 +0100
In-Reply-To: <20251113145332.16805-9-christian.koenig@amd.com>
References: <20251113145332.16805-1-christian.koenig@amd.com>
	 <20251113145332.16805-9-christian.koenig@amd.com>
MIME-Version: 1.0
X-MBO-RS-ID: 5b9c762a8f61f71ad61
X-MBO-RS-META: b6kyy13na4iho37yxz1xt9n58cppo6yw
X-Spamd-Bar: --
X-MailFrom: phasta@mailbox.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: IBGQMTASHBWPWXM5PYQ5EJMXXY57NPST
X-Message-ID-Hash: IBGQMTASHBWPWXM5PYQ5EJMXXY57NPST
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:56:53 +0000
X-Mailman-Version: 3.3.5
Precedence: list
Reply-To: phasta@kernel.org
Subject: [Linaro-mm-sig] Re: [PATCH 08/18] drm/sched: use inline locks for the drm-sched-fence
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IBGQMTASHBWPWXM5PYQ5EJMXXY57NPST/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [5.09 / 15.00];
	DMARC_POLICY_REJECT(2.00)[mailbox.org : SPF not aligned (relaxed),reject];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[mailbox.org:s=mail20150812];
	DATE_IN_PAST(1.00)[3694];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,ursulin.net,intel.com,lists.freedesktop.org,lists.linaro.org,linaro.org];
	DKIM_TRACE(0.00)[mailbox.org:-];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-0.927];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phasta@mailbox.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	HAS_REPLYTO(0.00)[phasta@kernel.org];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,mailbox.org:mid]
X-Rspamd-Queue-Id: A8CB2410660
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVGh1LCAyMDI1LTExLTEzIGF0IDE1OjUxICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3Rl
Og0KPiBVc2luZyB0aGUgaW5saW5lIGxvY2sgaXMgbm93IHRoZSByZWNvbW1lbmRlZCB3YXkgZm9y
IGRtYV9mZW5jZSBpbXBsZW1lbnRhdGlvbnMuDQo+IA0KPiBTbyB1c2UgdGhpcyBhcHByb2FjaCBm
b3IgdGhlIHNjaGVkdWxlciBmZW5jZXMgYXMgd2VsbCBqdXN0IGluIGNhc2UgaWYNCj4gYW55Ym9k
eSB1c2VzIHRoaXMgYXMgYmx1ZXByaW50IGZvciBpdHMgb3duIGltcGxlbWVudGF0aW9uLg0KPiAN
Cj4gQWxzbyBzYXZlcyBhYm91dCA0IGJ5dGVzIGZvciB0aGUgZXh0ZXJuYWwgc3BpbmxvY2suDQoN
ClNvIHlvdSBjaGFuZ2VkIHlvdXIgbWluZCBhbmQgd2FudCB0byBrZWVwIHRoaXMgcGF0Y2g/DQoN
ClAuDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9y
ZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlz
dHMubGluYXJvLm9yZwo=
