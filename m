Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 143E0A8B17A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Apr 2025 09:01:35 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 090C2459A1
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Apr 2025 07:01:34 +0000 (UTC)
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.223.130])
	by lists.linaro.org (Postfix) with ESMTPS id 2181D434DB
	for <linaro-mm-sig@lists.linaro.org>; Wed, 16 Apr 2025 07:01:18 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=KIxUn9dB;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=2RkUhwYp;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=KIxUn9dB;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=2RkUhwYp;
	spf=pass (lists.linaro.org: domain of tzimmermann@suse.de designates 195.135.223.130 as permitted sender) smtp.mailfrom=tzimmermann@suse.de;
	dmarc=pass (policy=none) header.from=suse.de
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id F30AC211A0;
	Wed, 16 Apr 2025 07:01:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1744786877; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Xkk37Y1omom0hijBcC8bwgDPJGoFpt0Tk5+OHcg+jYI=;
	b=KIxUn9dBwJ1TAtQsPWCICS6B34udeTEdxaa5gS7p4nerWaIo3cNbTtmopKsYtx+6gf7jH1
	l9ybdynS2Z0qVpnmdP1beZB6b+QyujRRdFGD80YaDew/onaFl/hz0ueFEwebqebTLvSJ+R
	ehxBWGr6r+o5fX5L+g0o6Rb84AROf2s=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1744786877;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Xkk37Y1omom0hijBcC8bwgDPJGoFpt0Tk5+OHcg+jYI=;
	b=2RkUhwYpdx81uwR3ByHKOeJvHFjEinFXtEhfoRAJULMWiwvS7PZMLXfVi4t9o1G5Yf1n7A
	8U5fYprjA24ob7AA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1744786877; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Xkk37Y1omom0hijBcC8bwgDPJGoFpt0Tk5+OHcg+jYI=;
	b=KIxUn9dBwJ1TAtQsPWCICS6B34udeTEdxaa5gS7p4nerWaIo3cNbTtmopKsYtx+6gf7jH1
	l9ybdynS2Z0qVpnmdP1beZB6b+QyujRRdFGD80YaDew/onaFl/hz0ueFEwebqebTLvSJ+R
	ehxBWGr6r+o5fX5L+g0o6Rb84AROf2s=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1744786877;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Xkk37Y1omom0hijBcC8bwgDPJGoFpt0Tk5+OHcg+jYI=;
	b=2RkUhwYpdx81uwR3ByHKOeJvHFjEinFXtEhfoRAJULMWiwvS7PZMLXfVi4t9o1G5Yf1n7A
	8U5fYprjA24ob7AA==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 972D613976;
	Wed, 16 Apr 2025 07:01:16 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id ElSUI7xV/2d2RAAAD6G6ig
	(envelope-from <tzimmermann@suse.de>); Wed, 16 Apr 2025 07:01:16 +0000
From: Thomas Zimmermann <tzimmermann@suse.de>
To: simona@ffwll.ch,
	airlied@gmail.com,
	asrivats@redhat.com,
	andyshrk@163.com,
	christian.koenig@amd.com,
	boris.brezillon@collabora.com,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com
Date: Wed, 16 Apr 2025 08:57:45 +0200
Message-ID: <20250416065820.26076-1-tzimmermann@suse.de>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
X-Spam-Score: -3.30
X-Spam-Flag: NO
X-Spam-Level: 
X-Rspamd-Queue-Id: 2181D434DB
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
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[ffwll.ch,gmail.com,redhat.com,163.com,amd.com,collabora.com,kernel.org,linux.intel.com];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[linaro.org:email,amd.com:email,smtp-out1.suse.de:helo,smtp-out1.suse.de:rdns,ffwll.ch:email];
	DNSWL_BLOCKED(0.00)[195.135.223.130:from];
	DKIM_TRACE(0.00)[suse.de:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 2ASMW6SRO5QQQ5MXECNFNLVBNEQ67X7X
X-Message-ID-Hash: 2ASMW6SRO5QQQ5MXECNFNLVBNEQ67X7X
X-MailFrom: tzimmermann@suse.de
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3] drm/gem: Internally test import_attach for imported objects
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2ASMW6SRO5QQQ5MXECNFNLVBNEQ67X7X/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGVzdCBzdHJ1Y3QgZHJtX2dlbV9vYmplY3QuaW1wb3J0X2F0dGFjaCB0byBkZXRlY3QgaW1wb3J0
ZWQgb2JqZWN0cy4NCg0KRHVyaW5nIG9iamVjdCBjbGVuYW51cCwgdGhlIGRtYV9idWYgZmllbGQg
bWlnaHQgYmUgTlVMTC4gVGVzdGluZyBpdCBpbg0KYW4gb2JqZWN0J3MgZnJlZSBjYWxsYmFjayB0
aGVuIGluY29ycmVjdGx5IGRvZXMgYSBjbGVhbnVwIGFzIGZvciBuYXRpdmUNCm9iamVjdHMuIEhh
cHBlbnMgZm9yIGNhbGxzIHRvIGRybV9tb2RlX2Rlc3Ryb3lfZHVtYl9pb2N0bCgpIHRoYXQNCmNs
ZWFycyB0aGUgZG1hX2J1ZiBmaWVsZCBpbiBkcm1fZ2VtX29iamVjdF9leHBvcnRlZF9kbWFfYnVm
X2ZyZWUoKS4NCg0KdjM6DQotIG9ubHkgdGVzdCBmb3IgaW1wb3J0X2F0dGFjaCAoQm9yaXMpDQp2
MjoNCi0gdXNlIGltcG9ydF9hdHRhY2guZG1hYnVmIGluc3RlYWQgb2YgZG1hX2J1ZiAoQ2hyaXN0
aWFuKQ0KDQpTaWduZWQtb2ZmLWJ5OiBUaG9tYXMgWmltbWVybWFubiA8dHppbW1lcm1hbm5Ac3Vz
ZS5kZT4NCkZpeGVzOiBiNTdhYTQ3ZDM5ZTkgKCJkcm0vZ2VtOiBUZXN0IGZvciBpbXBvcnRlZCBH
RU0gYnVmZmVycyB3aXRoIGhlbHBlciIpDQpSZXBvcnRlZC1ieTogQW5keSBZYW4gPGFuZHlzaHJr
QDE2My5jb20+DQpDbG9zZXM6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2RyaS1kZXZlbC8zOGQw
OWQzNC40MzU0LjE5NjM3OWFhNTYwLkNvcmVtYWlsLmFuZHlzaHJrQDE2My5jb20vDQpUZXN0ZWQt
Ynk6IEFuZHkgWWFuIDxhbmR5c2hya0AxNjMuY29tPg0KQ2M6IFRob21hcyBaaW1tZXJtYW5uIDx0
emltbWVybWFubkBzdXNlLmRlPg0KQ2M6IEFudXNoYSBTcml2YXRzYSA8YXNyaXZhdHNAcmVkaGF0
LmNvbT4NCkNjOiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQpD
YzogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4N
CkNjOiBNYXhpbWUgUmlwYXJkIDxtcmlwYXJkQGtlcm5lbC5vcmc+DQpDYzogRGF2aWQgQWlybGll
IDxhaXJsaWVkQGdtYWlsLmNvbT4NCkNjOiBTaW1vbmEgVmV0dGVyIDxzaW1vbmFAZmZ3bGwuY2g+
DQpDYzogU3VtaXQgU2Vtd2FsIDxzdW1pdC5zZW13YWxAbGluYXJvLm9yZz4NCkNjOiAiQ2hyaXN0
aWFuIEvDtm5pZyIgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCkNjOiBkcmktZGV2ZWxAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnDQpDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnDQpDYzog
bGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnDQotLS0NCiBpbmNsdWRlL2RybS9kcm1fZ2Vt
LmggfCAzICstLQ0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMiBkZWxldGlvbnMo
LSkNCg0KZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2RybV9nZW0uaCBiL2luY2x1ZGUvZHJtL2Ry
bV9nZW0uaA0KaW5kZXggOWI3MWY3YTlmM2Y4Li5hMzEzM2EwODI2N2MgMTAwNjQ0DQotLS0gYS9p
bmNsdWRlL2RybS9kcm1fZ2VtLmgNCisrKyBiL2luY2x1ZGUvZHJtL2RybV9nZW0uaA0KQEAgLTU4
OCw4ICs1ODgsNyBAQCBzdGF0aWMgaW5saW5lIGJvb2wgZHJtX2dlbV9vYmplY3RfaXNfc2hhcmVk
X2Zvcl9tZW1vcnlfc3RhdHMoc3RydWN0IGRybV9nZW1fb2JqZQ0KICAqLw0KIHN0YXRpYyBpbmxp
bmUgYm9vbCBkcm1fZ2VtX2lzX2ltcG9ydGVkKGNvbnN0IHN0cnVjdCBkcm1fZ2VtX29iamVjdCAq
b2JqKQ0KIHsNCi0JLyogVGhlIGRtYS1idWYncyBwcml2IGZpZWxkIHBvaW50cyB0byB0aGUgb3Jp
Z2luYWwgR0VNIG9iamVjdC4gKi8NCi0JcmV0dXJuIG9iai0+ZG1hX2J1ZiAmJiAob2JqLT5kbWFf
YnVmLT5wcml2ICE9IG9iaik7DQorCXJldHVybiAhIW9iai0+aW1wb3J0X2F0dGFjaDsNCiB9DQog
DQogI2lmZGVmIENPTkZJR19MT0NLREVQDQotLSANCjIuNDkuMA0KDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlz
dCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBh
biBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
