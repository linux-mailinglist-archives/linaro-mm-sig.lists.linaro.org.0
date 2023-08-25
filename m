Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A51F79A946
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 16:59:30 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 686D53F532
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 14:59:29 +0000 (UTC)
Received: from mail.ispras.ru (mail.ispras.ru [83.149.199.84])
	by lists.linaro.org (Postfix) with ESMTPS id 68C523EC4B
	for <linaro-mm-sig@lists.linaro.org>; Fri, 25 Aug 2023 10:18:48 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ispras.ru header.s=default header.b=fXucNdLe;
	spf=pass (lists.linaro.org: domain of e.orlova@ispras.ru designates 83.149.199.84 as permitted sender) smtp.mailfrom=e.orlova@ispras.ru;
	dmarc=pass (policy=none) header.from=ispras.ru
Received: from mail.ispras.ru (unknown [83.149.199.84])
	by mail.ispras.ru (Postfix) with ESMTPSA id 2A66340737DA;
	Fri, 25 Aug 2023 10:18:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.ispras.ru 2A66340737DA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ispras.ru;
	s=default; t=1692958726;
	bh=uryXDS4nqyFR9SOXfKBV4jwGs2+MiiKOcdfzM+yQBHU=;
	h=Date:From:To:Subject:From;
	b=fXucNdLeXndyUqCDYugj424bpQr3cuRMDdbS8ufn/BaTq8IiBXHuwj3UE+ZMDfWhX
	 NWRToZ0JCpB2+AXgORxsFUu9cIhEt2+9n0n25UvguWQ/xGsmCAuPv3QVdC9ZTubY/u
	 7EJWYVAtF/mEC6RGK2fNNhGrD2he4mnfr+6YM0zk=
MIME-Version: 1.0
Date: Fri, 25 Aug 2023 13:18:46 +0300
From: e.orlova@ispras.ru
To: p.zabel@pengutronix.de, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, daniel@ffwll.ch,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 sumit.semwal@linaro.org, christian.koenig@amd.com,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org,
 lvc-project@linuxtesting.org
User-Agent: Roundcube Webmail/1.4.13
Message-ID: <a830685d8b10a00cfe0a86db1ee9fb13@ispras.ru>
X-Sender: e.orlova@ispras.ru
X-Rspamd-Queue-Id: 68C523EC4B
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.90 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-1.00)[83.149.199.84:from,83.149.199.84:received];
	DMARC_POLICY_ALLOW(-0.50)[ispras.ru,none];
	R_DKIM_ALLOW(-0.20)[ispras.ru:s=default];
	R_SPF_ALLOW(-0.20)[+ip4:83.149.199.84:c];
	MIME_GOOD(-0.10)[text/plain];
	ONCE_RECEIVED(0.10)[];
	FROM_NO_DN(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:3058, ipnet:83.149.192.0/18, country:RU];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_ALL(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[pengutronix.de,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,lists.freedesktop.org,vger.kernel.org,linaro.org,amd.com,lists.linaro.org,linuxtesting.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[ispras.ru:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-MailFrom: e.orlova@ispras.ru
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 2773DYFE7K4BMITDTKY63452KHD7SCEG
X-Message-ID-Hash: 2773DYFE7K4BMITDTKY63452KHD7SCEG
X-Mailman-Approved-At: Mon, 11 Sep 2023 14:58:29 +0000
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [QUESTION] drm/crtc: precondition for drm_crtc_init_with_planes()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2773DYFE7K4BMITDTKY63452KHD7SCEG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

RG9jdW1lbnRhdGlvbiBmb3IgZHJtX2NydGNfaW5pdF93aXRoX3BsYW5lcygpIGluDQpkcml2ZXJz
L2dwdS9kcm0vZHJtX2NydGMuYyBzdGF0ZXM6IMKrVGhlIGNydGMgc3RydWN0dXJlIHNob3VsZCBu
b3QgYmUNCmFsbG9jYXRlZCB3aXRoIGRldm1fa3phbGxvYygpwrsuDQoNCkhvd2V2ZXIsIGluIGRy
aXZlcnMvZ3B1L2RybS9zdG0vbHRkYy5jDQp0aGUgMm5kIGFyZ3VtZW50IG9mIHRoZSBmdW5jdGlv
biBkcm1fY3J0Y19pbml0X3dpdGhfcGxhbmVzKCkNCmlzIGEgc3RydWN0dXJlIGFsbG9jYXRlZCB3
aXRoIGRldm1fa3phbGxvYygpDQoNCkFsc28sIGluDQpkcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsv
bXRrX2RybV9jcnRjLmMNCmRyaXZlcnMvZ3B1L2RybS9oaXNpbGljb24va2lyaW4va2lyaW5fZHJt
X2Rydi5jDQpkcml2ZXJzL2dwdS9kcm0vbG9naWN2Yy9sb2dpY3ZjX2NydGMuYw0KZHJpdmVycy9n
cHUvZHJtL21lc29uL21lc29uX2NydGMuYw0KZHJpdmVycy9ncHUvZHJtL214c2ZiL2xjZGlmX2tt
cy5jDQpkcml2ZXJzL2dwdS9kcm0vbXhzZmIvbXhzZmJfa21zLmMNCmRyaXZlcnMvZ3B1L2RybS9y
ZW5lc2FzL3NobW9iaWxlL3NobW9iX2RybV9jcnRjLmMNCmRyaXZlcnMvZ3B1L2RybS9yb2NrY2hp
cC9yb2NrY2hpcF9kcm1fdm9wLmMNCmRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9k
cm1fdm9wMi5jDQpkcml2ZXJzL2dwdS9kcm0vc3VuNGkvc3VuNGlfY3J0Yy5jDQpkcml2ZXJzL2dw
dS9kcm0vdGVncmEvZGMuYw0KZHJpdmVycy9ncHUvZHJtL3RpbGNkYy90aWxjZGNfY3J0Yy5jDQp0
aGUgMm5kIGFyZ3VtZW50IG9mIHRoZSBmdW5jdGlvbiBkcm1fY3J0Y19pbml0X3dpdGhfcGxhbmVz
KCkNCmlzIGEgZmllbGQgb2YgdGhlIHN0cnVjdHVyZSBhbGxvY2F0ZWQgd2l0aCBkZXZtX2t6YWxs
b2MoKQ0KDQpJcyBpdCBjb3JyZWN0IG9yIGNhbiBpdCBsZWFkIHRvIGFueSBwcm9ibGVtcz8NCg0K
LS0NCkVrYXRlcmluYSBPcmxvdmENCkxpbnV4IFZlcmlmaWNhdGlvbiBDZW50ZXIsIElTUFJBUw0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1t
LXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVu
c3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5h
cm8ub3JnCg==
