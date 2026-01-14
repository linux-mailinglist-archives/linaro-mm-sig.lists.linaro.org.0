Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4O4JDhkM4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:19:37 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id D217E41195C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:19:36 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E070D40692
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:19:35 +0000 (UTC)
Received: from mout.web.de (mout.web.de [212.227.15.4])
	by lists.linaro.org (Postfix) with ESMTPS id 1978E401AE
	for <linaro-mm-sig@lists.linaro.org>; Wed, 14 Jan 2026 17:52:09 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=web.de header.s=s29768273 header.b=kbU4u535;
	spf=pass (lists.linaro.org: domain of Markus.Elfring@web.de designates 212.227.15.4 as permitted sender) smtp.mailfrom=Markus.Elfring@web.de;
	dmarc=pass (policy=quarantine) header.from=web.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=web.de;
	s=s29768273; t=1768413125; x=1769017925; i=markus.elfring@web.de;
	bh=4+GzhEB3tryEr+JL1CkKR8i+GAo7vGKj/DIOKGFcAeY=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:To:Cc:References:
	 Subject:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:
	 cc:content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=kbU4u535kWEOaVqR/4eqIHaX8i/jVHYgSg3KyE7BNOXIE05A67H/5hi/+SLbEwYd
	 XCZiigIhJPInFCe4mjmfoHwVaWKh+htKI3dl9u2flGp5ZIwSdEepawXJPiAGyCHVC
	 AaZ32dt2LsnDfVt13iienaN+uVNAs1fzL/GdaOEqSwKm6Tk1zEZ+jjwOzDnb8slOr
	 6n2UDY9jgRl4B/+QJwit6o7baE6n6ySgaJiWZn5RB1pRZoeA/GR/BkCZotSYPEG3h
	 DwGVxXVyl9rX5BnYAdspIIYk6VblCejuTH9lTOE3QP07JLFxg6QKcrMwcwXeteRMH
	 B/qztrmsAhOwtimmww==
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.178.29] ([94.31.69.218]) by smtp.web.de (mrweb005
 [213.165.67.108]) with ESMTPSA (Nemesis) id 1McIga-1wGFCb2Gp2-00eLSM; Wed, 14
 Jan 2026 18:52:05 +0100
Message-ID: <b356d642-6cb9-4c64-a66e-26b6e6fcd19c@web.de>
Date: Wed, 14 Jan 2026 18:51:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linaro-mm-sig@lists.linaro.org
References: <20260114-thames-v2-4-e94a6636e050@tomeuvizoso.net>
Content-Language: en-GB, de-DE
From: Markus Elfring <Markus.Elfring@web.de>
In-Reply-To: <20260114-thames-v2-4-e94a6636e050@tomeuvizoso.net>
X-Provags-ID: V03:K1:TujjZXhmNMoZ1C2MKWjZBB0J/Wckqor+l9zn0S9SlMmQfuiPc3x
 1s4kZqogPv1gWJVV75dUuJNVM4tv7lhcndMfiXfvIAVVqJ7s0gMS7Tk+9N+i9J0SJAXh8NO
 oxD642sDFoFgGfernCSwE/BRtbXSKdk5VwEHfjEIyceEZubz+4f9OAq+Mz5leYHW1ChBAQW
 FTkKrvlRF2U++Y2lDtPnQ==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:k91x8d4JPJk=;GMmbe1mCKTZLlg3zBtMEhc8Gq7g
 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
 Z4UmZG/kFv+KPkTxUpt+JTlSYq5iWH3QsecMPP
X-Spamd-Bar: ---
X-MailFrom: Markus.Elfring@web.de
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: LFZDRJRAP3OJVPOQ2GRKHZYRD6OPVZIO
X-Message-ID-Hash: LFZDRJRAP3OJVPOQ2GRKHZYRD6OPVZIO
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:12:05 +0000
CC: LKML <linux-kernel@vger.kernel.org>, linux-doc@vger.kernel.org, Andrei Aldea <a-aldea@ti.com>, "Andrew F. Davis" <afd@ti.com>, Chirag Shilwant <c-shilwant@ti.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Conor Dooley <conor+dt@kernel.org>, David Airlie <airlied@gmail.com>, Jonathan Corbet <corbet@lwn.net>, Jonathan Humphreys <j-humphreys@ti.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Nishanth Menon <nm@ti.com>, Oded Gabbay <ogabbay@kernel.org>, Randolph Sapp <rs@ti.com>, Rob Herring <robh@kernel.org>, Robert Nelson <robertcnelson@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Tero Kristo <kristo@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Vignesh Raghavendra <vigneshr@ti.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 4/5] accel/thames: Add IOCTL for job submission
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LFZDRJRAP3OJVPOQ2GRKHZYRD6OPVZIO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.59 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[web.de : SPF not aligned (relaxed), No valid DKIM,quarantine];
	DATE_IN_PAST(1.00)[2206];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[29];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[web.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[Markus.Elfring@web.de,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,ti.com,amd.com,kernel.org,gmail.com,lwn.net,linux.intel.com,ffwll.ch,linaro.org,suse.de];
	TAGGED_RCPT(0.00)[linaro-mm-sig,dt];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_SPAM(0.00)[0.576];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: D217E41195C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

4oCmDQo+ICsrKyBiL2RyaXZlcnMvYWNjZWwvdGhhbWVzL3RoYW1lc19qb2IuYw0KPiBAQCAtMCww
ICsxLDQ2MyBAQA0K4oCmDQo+ICtzdGF0aWMgaW50IHRoYW1lc19qb2JfcHVzaChzdHJ1Y3QgdGhh
bWVzX2pvYiAqam9iKQ0KPiArew0K4oCmDQo+ICsJZGV2X2RiZyh0ZGV2LT5kZGV2LmRldiwgIlB1
c2hpbmcgam9iIHdpdGggJXUgaW4gQk9zIGFuZCAldSBvdXQgQk9zXG4iLCBqb2ItPmluX2JvX2Nv
dW50LA0KPiArCQlqb2ItPm91dF9ib19jb3VudCk7DQo+ICsJYm9zID0ga3ZtYWxsb2NfYXJyYXko
am9iLT5pbl9ib19jb3VudCArIGpvYi0+b3V0X2JvX2NvdW50LCBzaXplb2Yodm9pZCAqKSwgR0ZQ
X0tFUk5FTCk7DQo+ICsJbWVtY3B5KGJvcywgam9iLT5pbl9ib3MsIGpvYi0+aW5fYm9fY291bnQg
KiBzaXplb2Yodm9pZCAqKSk7DQrigKYNCg0KV2h5IHdhcyBlcnJvciBkZXRlY3Rpb24gZm9yIGEg
bWVtb3J5IGFsbG9jYXRpb24gZmFpbHVyZSBvbWl0dGVkIChvciBvdmVybG9va2VkKQ0Kc28gZmFy
IGF0IHRoaXMgc291cmNlIGNvZGUgcGxhY2U/DQoNClJlZ2FyZHMsDQpNYXJrdXMNCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFp
bGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmli
ZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
