Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C5674A897F1
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Apr 2025 11:28:32 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B66E44598D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Apr 2025 09:28:31 +0000 (UTC)
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.223.130])
	by lists.linaro.org (Postfix) with ESMTPS id 2B34E410EA
	for <linaro-mm-sig@lists.linaro.org>; Tue, 15 Apr 2025 09:24:47 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=QmWaUoDT;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=EuZmUEZW;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=QmWaUoDT;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=EuZmUEZW;
	spf=pass (lists.linaro.org: domain of tzimmermann@suse.de designates 195.135.223.130 as permitted sender) smtp.mailfrom=tzimmermann@suse.de;
	dmarc=pass (policy=none) header.from=suse.de
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id 0777721166;
	Tue, 15 Apr 2025 09:24:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1744709086; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Pm52QsRmxq/tllwdensBCR+Q3LzdvPqrpt+hOA9XWXo=;
	b=QmWaUoDTm78rh2I7eeAuGlsPl3O5FkLtbXw2BTx8yLzbCj10q2HzV8/o+ir2/pRNrq4AZ5
	nPXlcl2KD9gcTfihd6fa2ywfyidiXpNsSoXuWxxz+Gd/6TZN2X+zKu4TAQIFrKqwQWx8+5
	dzg6XWUT/BoVXiAacsdxV20u4qonN74=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1744709086;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Pm52QsRmxq/tllwdensBCR+Q3LzdvPqrpt+hOA9XWXo=;
	b=EuZmUEZW1WzfE1dcFsQb4VEiqDYcCWnr+cFcAJleATSQw6z3en4cE98nZoO9ZljWf/nD7h
	AJsr+q4zIjRDBqDw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1744709086; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Pm52QsRmxq/tllwdensBCR+Q3LzdvPqrpt+hOA9XWXo=;
	b=QmWaUoDTm78rh2I7eeAuGlsPl3O5FkLtbXw2BTx8yLzbCj10q2HzV8/o+ir2/pRNrq4AZ5
	nPXlcl2KD9gcTfihd6fa2ywfyidiXpNsSoXuWxxz+Gd/6TZN2X+zKu4TAQIFrKqwQWx8+5
	dzg6XWUT/BoVXiAacsdxV20u4qonN74=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1744709086;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Pm52QsRmxq/tllwdensBCR+Q3LzdvPqrpt+hOA9XWXo=;
	b=EuZmUEZW1WzfE1dcFsQb4VEiqDYcCWnr+cFcAJleATSQw6z3en4cE98nZoO9ZljWf/nD7h
	AJsr+q4zIjRDBqDw==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id AD358137A5;
	Tue, 15 Apr 2025 09:24:45 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id LFIcKd0l/mehVgAAD6G6ig
	(envelope-from <tzimmermann@suse.de>); Tue, 15 Apr 2025 09:24:45 +0000
From: Thomas Zimmermann <tzimmermann@suse.de>
To: simona@ffwll.ch,
	airlied@gmail.com,
	asrivats@redhat.com,
	andyshrk@163.com,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com
Date: Tue, 15 Apr 2025 11:20:40 +0200
Message-ID: <20250415092057.63172-1-tzimmermann@suse.de>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
X-Spam-Level: 
X-Spam-Score: -3.30
X-Spam-Flag: NO
X-Rspamd-Queue-Id: 2B34E410EA
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	RBL_SENDERSCORE_REPUT_9(-1.00)[195.135.223.130:from];
	DMARC_POLICY_ALLOW(-0.50)[suse.de,none];
	R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	R_SPF_ALLOW(-0.20)[+ip4:195.135.223.130/32];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_ALL(0.00)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:29298, ipnet:195.135.223.0/24, country:DE];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[ffwll.ch,gmail.com,redhat.com,163.com,kernel.org,linux.intel.com];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[lists.freedesktop.org:email,linaro.org:email,suse.de:dkim,suse.de:mid,suse.de:email];
	DNSWL_BLOCKED(0.00)[195.135.223.130:from];
	DKIM_TRACE(0.00)[suse.de:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: CHRL3GG32SNE7DG2ANG42R5XVXBCMWHM
X-Message-ID-Hash: CHRL3GG32SNE7DG2ANG42R5XVXBCMWHM
X-MailFrom: tzimmermann@suse.de
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] drm/gem: Internally test import_attach for imported objects
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CHRL3GG32SNE7DG2ANG42R5XVXBCMWHM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGVzdCBzdHJ1Y3QgZHJtX2dlbV9vYmplY3QuaW1wb3J0X2F0dGFjaCB0byBkZXRlY3QgaW1wb3J0
ZWQgb2JqZWN0cw0KZHVyaW5nIGNsZWFudXAuIEF0IHRoYXQgcG9pbnQsIHRoZSBpbXBvcnRlZCBE
TUEgYnVmZmVyIG1pZ2h0IGhhdmUNCmFscmVhZHkgYmVlbiByZWxlYXNlZCBhbmQgdGhlIGRtYV9i
dWYgZmllbGQgaXMgTlVMTC4gVGhlIG9iamVjdCdzDQpmcmVlIGNhbGxiYWNrIHRoZW4gZG9lcyBh
IGNsZWFudXAgYXMgZm9yIG5hdGl2ZSBvYmplY3RzLg0KDQpIYXBwZW5zIGZvciBjYWxscyB0byBk
cm1fbW9kZV9kZXN0cm95X2R1bWJfaW9jdGwoKSB0aGF0IGV2ZW50dWFsbHkNCmNsZWFyIHRoZSBk
bWFfYnVmIGZpZWxkIGluIGRybV9nZW1fb2JqZWN0X2V4cG9ydGVkX2RtYV9idWZfZnJlZSgpLg0K
DQpTaWduZWQtb2ZmLWJ5OiBUaG9tYXMgWmltbWVybWFubiA8dHppbW1lcm1hbm5Ac3VzZS5kZT4N
CkZpeGVzOiBiNTdhYTQ3ZDM5ZTkgKCJkcm0vZ2VtOiBUZXN0IGZvciBpbXBvcnRlZCBHRU0gYnVm
ZmVycyB3aXRoIGhlbHBlciIpDQpSZXBvcnRlZC1ieTogQW5keSBZYW4gPGFuZHlzaHJrQDE2My5j
b20+DQpDbG9zZXM6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2RyaS1kZXZlbC8zOGQwOWQzNC40
MzU0LjE5NjM3OWFhNTYwLkNvcmVtYWlsLmFuZHlzaHJrQDE2My5jb20vDQpUZXN0ZWQtYnk6IEFu
ZHkgWWFuIDxhbmR5c2hya0AxNjMuY29tPg0KQ2M6IFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVy
bWFubkBzdXNlLmRlPg0KQ2M6IEFudXNoYSBTcml2YXRzYSA8YXNyaXZhdHNAcmVkaGF0LmNvbT4N
CkNjOiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQpDYzogTWFh
cnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4NCkNjOiBN
YXhpbWUgUmlwYXJkIDxtcmlwYXJkQGtlcm5lbC5vcmc+DQpDYzogRGF2aWQgQWlybGllIDxhaXJs
aWVkQGdtYWlsLmNvbT4NCkNjOiBTaW1vbmEgVmV0dGVyIDxzaW1vbmFAZmZ3bGwuY2g+DQpDYzog
U3VtaXQgU2Vtd2FsIDxzdW1pdC5zZW13YWxAbGluYXJvLm9yZz4NCkNjOiAiQ2hyaXN0aWFuIEvD
tm5pZyIgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCkNjOiBkcmktZGV2ZWxAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnDQpDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnDQpDYzogbGluYXJv
LW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnDQotLS0NCiBpbmNsdWRlL2RybS9kcm1fZ2VtLmggfCA4
ICsrKysrKystDQogMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigt
KQ0KDQpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0vZHJtX2dlbS5oIGIvaW5jbHVkZS9kcm0vZHJt
X2dlbS5oDQppbmRleCA5YjcxZjdhOWYzZjguLmYwOWI4YWZjZjg2ZCAxMDA2NDQNCi0tLSBhL2lu
Y2x1ZGUvZHJtL2RybV9nZW0uaA0KKysrIGIvaW5jbHVkZS9kcm0vZHJtX2dlbS5oDQpAQCAtNTg5
LDcgKzU4OSwxMyBAQCBzdGF0aWMgaW5saW5lIGJvb2wgZHJtX2dlbV9vYmplY3RfaXNfc2hhcmVk
X2Zvcl9tZW1vcnlfc3RhdHMoc3RydWN0IGRybV9nZW1fb2JqZQ0KIHN0YXRpYyBpbmxpbmUgYm9v
bCBkcm1fZ2VtX2lzX2ltcG9ydGVkKGNvbnN0IHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqKQ0K
IHsNCiAJLyogVGhlIGRtYS1idWYncyBwcml2IGZpZWxkIHBvaW50cyB0byB0aGUgb3JpZ2luYWwg
R0VNIG9iamVjdC4gKi8NCi0JcmV0dXJuIG9iai0+ZG1hX2J1ZiAmJiAob2JqLT5kbWFfYnVmLT5w
cml2ICE9IG9iaik7DQorCXJldHVybiAob2JqLT5kbWFfYnVmICYmIChvYmotPmRtYV9idWYtPnBy
aXYgIT0gb2JqKSkgfHwNCisJICAgICAgIC8qDQorCQkqIFRPRE86IER1cmluZyBvYmplY3QgcmVs
ZWFzZSwgdGhlIGRtYS1idWYgbWlnaHQgYWxyZWFkeQ0KKwkJKiAgICAgICBiZSBnb25lLiBGb3Ig
bm93IGtlZXAgdGVzdGluZyBpbXBvcnRfYXR0YWNoLCBidXQNCisJCSogICAgICAgdGhpcyBzaG91
bGQgYmUgcmVtb3ZlZCBhdCBzb21lIHBvaW50Lg0KKwkJKi8NCisJICAgICAgIG9iai0+aW1wb3J0
X2F0dGFjaDsNCiB9DQogDQogI2lmZGVmIENPTkZJR19MT0NLREVQDQotLSANCjIuNDkuMA0KDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFy
by5vcmcK
