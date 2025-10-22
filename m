Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8CZcLdT24GmInwAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:48:52 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C32340FC5D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:48:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 67397406BE
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 14:48:51 +0000 (UTC)
Received: from mout.web.de (mout.web.de [212.227.15.14])
	by lists.linaro.org (Postfix) with ESMTPS id 4D9CA3F77C
	for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Oct 2025 11:14:37 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=web.de header.s=s29768273 header.b="Ty/h6UXx";
	dmarc=pass (policy=quarantine) header.from=web.de;
	spf=pass (lists.linaro.org: domain of Markus.Elfring@web.de designates 212.227.15.14 as permitted sender) smtp.mailfrom=Markus.Elfring@web.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=web.de;
	s=s29768273; t=1761131666; x=1761736466; i=markus.elfring@web.de;
	bh=WQh/q03bUDYSmRb3ARH65jyFk5aRNd38x4A59pLe7SY=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:To:Cc:References:
	 Subject:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:
	 cc:content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=Ty/h6UXxBOv2WhlV4k7jjpUgB6DozGeva5jrtpBweDQoEI/CWXOm8FloDna1yvSQ
	 ErQJ1RMiJYiL5a2yFty58azyCyMcKCkO3rRZ6cpr8Un3eU1PHLJHQMZ2OyhYAvLX6
	 04uaTk39cIA9eNuODJGnv0SmyheBOw3bcV/Lbxisl+XNy/0fwB1EAI2HlI96ioEKe
	 HJMkypIFb0eqpKFg0OIG54FPJxPYk7qolxPabQoL75HL8FTNYeVz1/exJap7ygj4W
	 t0bghgoej9U/v59pT1JeUpvoYeEhyRFQlMfR7CheDKJHwCh0vi4Eo8Gi9w87RAk1m
	 YAkKduyBWFBm/6KAjg==
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.178.29] ([94.31.92.250]) by smtp.web.de (mrweb005
 [213.165.67.108]) with ESMTPSA (Nemesis) id 1MWi5s-1ueXU21um0-00XJna; Wed, 22
 Oct 2025 13:14:26 +0200
Message-ID: <d1461717-1a58-46f7-b8fd-a185aaf90828@web.de>
Date: Wed, 22 Oct 2025 13:14:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Biancaa Ramesh <biancaa2210329@ssn.edu.in>, linux-media@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Sumit Semwal <sumit.semwal@linaro.org>
References: <20251022043108.7197-1-biancaa2210329@ssn.edu.in>
Content-Language: en-GB, de-DE
From: Markus Elfring <Markus.Elfring@web.de>
In-Reply-To: <20251022043108.7197-1-biancaa2210329@ssn.edu.in>
X-Provags-ID: V03:K1:0OaA8HjrVXcqa3gae9XV0pfDlRR6IVm+fJ7MEAd9rA8juELnufq
 AsPkoJi+l9YuG8Tpen6TuXZaSNZqwhoP2Qo9aUnYcpAZTnigtlPblrfFopCgAueVZwoOQbF
 HsmEbHm2j8azgyjY8vIHx4JrNeJNloubBfI2rgok8f/1AhxqtyEnzAIq6stuVf2CEP0Cmxf
 ky6HIjwRyYDp5oNqJfZcg==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:zijLEPWv5H4=;AHj7xADi6QHCzgwi/VgWFAOVKNj
 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
X-Spamd-Bar: ---
X-MailFrom: Markus.Elfring@web.de
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: ZUWAESLFKFBOE57WKR5NX77ASYALF7V3
X-Message-ID-Hash: ZUWAESLFKFBOE57WKR5NX77ASYALF7V3
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:48:15 +0000
CC: linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, lkp@intel.com, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] =?utf-8?q?Re=3A_=5BPATCH_v2=5D_Signed-off-by=3A_Biancaa_Ramesh_=E2=80=A6?=
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZUWAESLFKFBOE57WKR5NX77ASYALF7V3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [2.09 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[web.de : SPF not aligned (relaxed), No valid DKIM,quarantine];
	DATE_IN_PAST(1.00)[4227];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FREEMAIL_FROM(0.00)[web.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.702];
	FROM_NEQ_ENVFROM(0.00)[Markus.Elfring@web.de,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:url,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 5C32340FC5D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

PiBkbWEtYnVmOiBpbXByb3ZlIGRtYV9idWZfc2hvd19mZGluZm8gb3V0cHV0DQrigKYNCj4gVGhp
cyBwYXRjaCBhbHNvIGZpeGVzIGluY29ycmVjdCDigKYNCg0KU2VlIGFsc286DQpodHRwczovL2dp
dC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90b3J2YWxkcy9saW51eC5naXQv
dHJlZS9Eb2N1bWVudGF0aW9uL3Byb2Nlc3Mvc3VibWl0dGluZy1wYXRjaGVzLnJzdD9oPXY2LjE4
LXJjMiNuOTQNCg0KDQo+IENsb3NlczogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvb2Uta2J1aWxk
LWFsbC8yMDI1MTAyMjA4MDIuc3ZiZ2RZc0otbGtwQGludGVsLmNvbS8NCg0KTm90IHlldC4NCg0K
UGxlYXNlIHVzZSBhIG1vcmUgYXBwcm9wcmlhdGUgcGF0Y2ggc3ViamVjdCBmb3IgdGhlIHByb3Bv
c2VkIGFkanVzdG1lbnQNCm9mIHRoZSBmdW5jdGlvbiDigJxkbWFfYnVmX3Nob3dfZmRpbmZv4oCd
Lg0KaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvdjYuMTgtcmMyL3NvdXJjZS9kcml2
ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jI0w1NzAtTDU4Mg0KaHR0cHM6Ly9naXQua2VybmVsLm9yZy9w
dWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdG9ydmFsZHMvbGludXguZ2l0L3RyZWUvRG9jdW1lbnRh
dGlvbi9wcm9jZXNzL3N1Ym1pdHRpbmctcGF0Y2hlcy5yc3Q/aD12Ni4xOC1yYzIjbjM5Ng0KDQoN
Cj4gLS0tDQo+ICBkcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIHwgMjYgKysrKysrKysrKysrLS0t
LS0tLS0tLS0tLS0NCuKApg0KDQpTb21lIGNvbnRyaWJ1dG9ycyB3b3VsZCBhcHByZWNpYXRlIHBh
dGNoIHZlcnNpb24gZGVzY3JpcHRpb25zLg0KaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLz9x
PSUyMlRoaXMrbG9va3MrbGlrZSthK25ldyt2ZXJzaW9uK29mK2ErcHJldmlvdXNseStzdWJtaXR0
ZWQrcGF0Y2glMjINCmh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwv
Z2l0L3RvcnZhbGRzL2xpbnV4LmdpdC90cmVlL0RvY3VtZW50YXRpb24vcHJvY2Vzcy9zdWJtaXR0
aW5nLXBhdGNoZXMucnN0P2g9djYuMTgtcmMyI24zMTANCg0KDQrigKYNCj4gKysrIGIvZHJpdmVy
cy9kbWEtYnVmL2RtYS1idWYuYw0KPiBAQCAtNTcxLDI0ICs1NzEsMjIgQEAgc3RhdGljIGxvbmcg
ZG1hX2J1Zl9pb2N0bChzdHJ1Y3QgZmlsZSAqZmlsZSwNCj4gIAl9DQo+ICB9DQo+ICANCj4gLXN0
YXRpYyB2b2lkIGRtYV9idWZfc2hvd19mZGluZm8oc3RydWN0IHNlcV9maWxlICpzLCBzdHJ1Y3Qg
ZmlsZSAqZikNCj4gK3N0YXRpYyB2b2lkIGRtYV9idWZfc2hvd19mZGluZm8oc3RydWN0IHNlcV9m
aWxlICpzLCBzdHJ1Y3QgZmlsZSAqZmlsZSkNCj4gIHsNCuKApg0K4oCmDQo+IC0gICAgc2VxX3By
aW50ZihzLCAiZmxhZ3M6XHQlbHVcbiIsIGYtPmZfZmxhZ3MpOw0KPiAtICAgIHNlcV9wcmludGYo
cywgInNpemU6XHQlbGx1XG4iLCBkbWFidWYtPnNpemUpOw0KDQoqIFdoeSBkb2VzIHN1Y2ggYSBk
aWZmIHJlcHJlc2VudGF0aW9uIGNvbnRhaW4gc3BhY2UgY2hhcmFjdGVycyBpbnN0ZWFkIG9mIHRh
YiBjaGFyYWN0ZXJzPw0KDQoqIERpZCB5b3UgcmVmZXIgdG8gYSBzb3VyY2UgY29kZSB2YXJpYW50
IGJlZm9yZSB0aGUgY29tbWl0IGJjYzA3MTExMGFlYWNkMjhhODc1MjVhMjQ0MmRkOTZlYWIxNDVh
M2MNCiAgKCJkbWEtYnVmOiBhZGQgc2hvd19mZGluZm8gaGFuZGxlciIpIGZyb20gMjAxOS0wNi0x
ND8NCg0KDQrigKYNCj4gLS0gDQo+IDo6RElTQ0xBSU1FUjo6DQrigKYNCj4gVGhlIA0KPiBjb250
ZW50cyBvZiB0aGlzIGUtbWFpbCBhbmQgYW55IGF0dGFjaG1lbnQocykgYXJlIGNvbmZpZGVudGlh
bCBhbmQNCuKApg0KDQpQbGVhc2UgYXZvaWQgc3VjaCB1bndhbnRlZCBpbmZvcm1hdGlvbiBmb3Ig
Y29tbXVuaWNhdGlvbiBieSB0aGUgbWVhbnMgb2YgcHVibGljIG1haWxpbmcgbGlzdHMuDQpodHRw
czovL3N1YnNwYWNlLmtlcm5lbC5vcmcvZXRpcXVldHRlLmh0bWwjZG8tbm90LWluY2x1ZGUtY29u
ZmlkZW50aWFsaXR5LWRpc2NsYWltZXJzDQoNClJlZ2FyZHMsDQpNYXJrdXMNCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGlu
ZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBz
ZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
