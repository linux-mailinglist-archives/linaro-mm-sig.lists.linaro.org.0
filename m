Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 09E37B2EE6B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Aug 2025 08:43:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C5BEE4575F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 Aug 2025 06:43:29 +0000 (UTC)
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.223.130])
	by lists.linaro.org (Postfix) with ESMTPS id 0181F3F6AF
	for <linaro-mm-sig@lists.linaro.org>; Thu, 21 Aug 2025 06:43:23 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=lMLOxF0F;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=gDV6t3uF;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=lMLOxF0F;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=gDV6t3uF;
	spf=pass (lists.linaro.org: domain of tzimmermann@suse.de designates 195.135.223.130 as permitted sender) smtp.mailfrom=tzimmermann@suse.de;
	dmarc=pass (policy=none) header.from=suse.de
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id AD244222A7;
	Thu, 21 Aug 2025 06:43:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1755758601; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=p46sQbW/eTCJ3rrkz45qAh9n0U47s/4mBkUdTiIOREM=;
	b=lMLOxF0FvPK496g6ehtC9eWrXIYIqfp566vr8Tdenn4iUJ9he4ZWSFeivfz+OGaliVxgOd
	FWf/6vfqht/ylDILfiA+Pq3ed0P7yZRmR+Oj/B4Xz8itHJmJiSYSKJ4g/PpqyIvn3RT7aO
	9E3WuwAvrCPbDXbWscVWYleTQB6qmHY=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1755758601;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=p46sQbW/eTCJ3rrkz45qAh9n0U47s/4mBkUdTiIOREM=;
	b=gDV6t3uFjFvMYuOac8g9FxLNJOcO8mdUTxtbaM9Uke9EIVwWIWZomv8mUGlzrVWrKPbX/e
	bmrmpLBGVi0wwNAA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1755758601; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=p46sQbW/eTCJ3rrkz45qAh9n0U47s/4mBkUdTiIOREM=;
	b=lMLOxF0FvPK496g6ehtC9eWrXIYIqfp566vr8Tdenn4iUJ9he4ZWSFeivfz+OGaliVxgOd
	FWf/6vfqht/ylDILfiA+Pq3ed0P7yZRmR+Oj/B4Xz8itHJmJiSYSKJ4g/PpqyIvn3RT7aO
	9E3WuwAvrCPbDXbWscVWYleTQB6qmHY=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1755758601;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=p46sQbW/eTCJ3rrkz45qAh9n0U47s/4mBkUdTiIOREM=;
	b=gDV6t3uFjFvMYuOac8g9FxLNJOcO8mdUTxtbaM9Uke9EIVwWIWZomv8mUGlzrVWrKPbX/e
	bmrmpLBGVi0wwNAA==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 4965C139A8;
	Thu, 21 Aug 2025 06:43:21 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id BMSxEAnApmgmdgAAD6G6ig
	(envelope-from <tzimmermann@suse.de>); Thu, 21 Aug 2025 06:43:21 +0000
From: Thomas Zimmermann <tzimmermann@suse.de>
To: sumit.semwal@linaro.org,
	christian.koenig@amd.com,
	oushixiong@kylinos.cn,
	alexander.deucher@amd.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	airlied@gmail.com,
	simona@ffwll.ch
Date: Thu, 21 Aug 2025 08:40:12 +0200
Message-ID: <20250821064031.39090-1-tzimmermann@suse.de>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
X-Spam-Flag: NO
X-Spam-Level: 
X-Spam-Score: -3.30
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 0181F3F6AF
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[suse.de,none];
	R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	R_SPF_ALLOW(-0.20)[+ip4:195.135.223.130/32];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:29298, ipnet:195.135.223.0/24, country:DE];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_TO(0.00)[linaro.org,amd.com,kylinos.cn,linux.intel.com,kernel.org,gmail.com,ffwll.ch];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	URIBL_BLOCKED(0.00)[lists.freedesktop.org:email,amd.com:email,ffwll.ch:email];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[suse.de:+]
Message-ID-Hash: PIZOX5JGLQSEQVJZYFWCMH26JAZZ3HNR
X-Message-ID-Hash: PIZOX5JGLQSEQVJZYFWCMH26JAZZ3HNR
X-MailFrom: tzimmermann@suse.de
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v3] drm/amdgpu: Pin buffers while vmap'ing exported dma-buf objects
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PIZOX5JGLQSEQVJZYFWCMH26JAZZ3HNR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Q3VycmVudCBkbWEtYnVmIHZtYXAgc2VtYW50aWNzIHJlcXVpcmUgdGhhdCB0aGUgbWFwcGVkIGJ1
ZmZlciByZW1haW5zDQppbiBwbGFjZSB1bnRpbCB0aGUgY29ycmVzcG9uZGluZyB2dW5tYXAgaGFz
IGNvbXBsZXRlZC4NCg0KRm9yIEdFTS1TSE1FTSwgdGhpcyB1c2VkIHRvIGJlIGd1YXJhbnRlZWQg
YnkgYSBwaW4gb3BlcmF0aW9uIHdoaWxlIGNyZWF0aW5nDQphbiBTL0cgdGFibGUgaW4gaW1wb3J0
LiBHRU0tU0hNRU4gY2FuIG5vdyBpbXBvcnQgZG1hLWJ1ZiBvYmplY3RzIHdpdGhvdXQNCmNyZWF0
aW5nIHRoZSBTL0cgdGFibGUsIHNvIHRoZSBwaW4gaXMgbWlzc2luZy4gTGVhZHMgdG8gcGFnZS1m
YXVsdCBlcnJvcnMsDQpzdWNoIGFzIHRoZSBvbmUgc2hvd24gYmVsb3cuDQoNClsgIDEwMi4xMDE3
MjZdIEJVRzogdW5hYmxlIHRvIGhhbmRsZSBwYWdlIGZhdWx0IGZvciBhZGRyZXNzOiBmZmZmYzkw
MTI3MDAwMDAwDQpbLi4uXQ0KWyAgMTAyLjE1NzEwMl0gUklQOiAwMDEwOnVkbF9jb21wcmVzc19o
bGluZTE2KzB4MjE5LzB4OTQwIFt1ZGxdDQpbLi4uXQ0KWyAgMTAyLjI0MzI1MF0gQ2FsbCBUcmFj
ZToNClsgIDEwMi4yNDU2OTVdICA8VEFTSz4NClsgIDEwMi4yNDc3Vjk1XSAgPyB2YWxpZGF0ZV9j
aGFpbisweDI0ZS8weDVlMA0KWyAgMTAyLjI1MTgwNV0gID8gX19sb2NrX2FjcXVpcmUrMHg1Njgv
MHhhZTANClsgIDEwMi4yNTU4MDddICB1ZGxfcmVuZGVyX2hsaW5lKzB4MTY1LzB4MzQxIFt1ZGxd
DQpbICAxMDIuMjYwMzM4XSAgPyBfX3BmeF91ZGxfcmVuZGVyX2hsaW5lKzB4MTAvMHgxMCBbdWRs
XQ0KWyAgMTAyLjI2NTM3OV0gID8gbG9jYWxfY2xvY2tfbm9pbnN0cisweGIvMHgxMDANClsgIDEw
Mi4yNjk2NDJdICA/IF9fbG9ja19yZWxlYXNlLmlzcmEuMCsweDE2Yy8weDJlMA0KWyAgMTAyLjI3
NDI0Nl0gID8gbWFya19oZWxkX2xvY2tzKzB4NDAvMHg3MA0KWyAgMTAyLjI3ODE3N10gIHVkbF9w
cmltYXJ5X3BsYW5lX2hlbHBlcl9hdG9taWNfdXBkYXRlKzB4NDNlLzB4NjgwIFt1ZGxdDQpbICAx
MDIuMjg0NjA2XSAgPyBfX3BmeF91ZGxfcHJpbWFyeV9wbGFuZV9oZWxwZXJfYXRvbWljX3VwZGF0
ZSsweDEwLzB4MTAgW3VkbF0NClsgIDEwMi4yOTE1NTFdICA/IGxvY2tkZXBfaGFyZGlycXNfb25f
cHJlcGFyZS5wYXJ0LjArMHg5Mi8weDE3MA0KWyAgMTAyLjI5NzIwOF0gID8gbG9ja2RlcF9oYXJk
aXJxc19vbisweDg4LzB4MTMwDQpbICAxMDIuMzAxNTU0XSAgPyBfcmF3X3NwaW5fdW5sb2NrX2ly
cSsweDI0LzB4NTANClsgIDEwMi4zMDU5MDFdICA/IHdhaXRfZm9yX2NvbXBsZXRpb25fdGltZW91
dCsweDJiYi8weDNhMA0KWyAgMTAyLjMxMTAyOF0gID8gZHJtX2F0b21pY19oZWxwZXJfY2FsY190
aW1lc3RhbXBpbmdfY29uc3RhbnRzKzB4MTQxLzB4MjAwDQpbICAxMDIuMzE3NzE0XSAgPyBkcm1f
YXRvbWljX2hlbHBlcl9jb21taXRfcGxhbmVzKzB4M2I2LzB4MTAzMA0KWyAgMTAyLjMyMzI3OV0g
IGRybV9hdG9taWNfaGVscGVyX2NvbW1pdF9wbGFuZXMrMHgzYjYvMHgxMDMwDQpbICAxMDIuMzI4
NjY0XSAgZHJtX2F0b21pY19oZWxwZXJfY29tbWl0X3RhaWwrMHg0MS8weGIwDQpbICAxMDIuMzMz
NjIyXSAgY29tbWl0X3RhaWwrMHgyMDQvMHgzMzANClsuLi5dDQpbICAxMDIuNTI5OTQ2XSAtLS1b
IGVuZCB0cmFjZSAwMDAwMDAwMDAwMDAwMDAwIF0tLS0NClsgIDEwMi42NTE5ODBdIFJJUDogMDAx
MDp1ZGxfY29tcHJlc3NfaGxpbmUxNisweDIxOS8weDk0MCBbdWRsXQ0KDQpJbiB0aGlzIHN0YWNr
IHN0cmFjZSwgdWRsIChiYXNlZCBvbiBHRU0tU0hNRU0pIGltcG9ydGVkIGFuZCB2bWFwJ2VkIGEN
CmRtYS1idWYgZnJvbSBhbWRncHUuIEFtZGdwdSByZWxvY2F0ZWQgdGhlIGJ1ZmZlciwgdGhlcmVi
eSBpbnZhbGlkYXRpbmcgdGhlDQptYXBwaW5nLg0KDQpQcm92aWRlIGEgY3VzdG9tIGRtYS1idWYg
dm1hcCBtZXRob2QgaW4gYW1kZ3B1IHRoYXQgcGlucyB0aGUgb2JqZWN0IGJlZm9yZQ0KbWFwcGlu
ZyBpdCdzIGJ1ZmZlcidzIHBhZ2VzIGludG8ga2VybmVsIGFkZHJlc3Mgc3BhY2UuIERvIHRoZSBv
cHBvc2l0ZSBpbg0KdnVubWFwLg0KDQpOb3RlIHRoYXQgZG1hLWJ1ZiB2bWFwIGRpZmZlcnMgZnJv
bSBHRU0gdm1hcCBpbiBob3cgaXQgaGFuZGxlcyByZWxvY2F0aW9uLg0KV2hpbGUgZG1hLWJ1ZiB2
bWFwIGtlZXBzIHRoZSBidWZmZXIgaW4gcGxhY2UsIEdFTSB2bWFwIHJlcXVpcmVzIHRoZSBjYWxs
ZXINCnRvIGtlZXAgdGhlIGJ1ZmZlciBpbiBwbGFjZS4gSGVuY2UsIHRoaXMgZml4IGlzIGluIGFt
ZGdwdSdzIGRtYS1idWYgY29kZQ0KaW5zdGVhZCBvZiBpdHMgR0VNIGNvZGUuDQoNCkEgZGlzY3Vz
c2lvbiBvZiB2YXJpb3VzIGFwcHJvYWNoZXMgdG8gc29sdmluZyB0aGUgcHJvYmxlbSBpcyBhdmFp
bGFibGUNCmF0IFsxXS4NCg0KdjM6DQotIHRyeSAoR1RUIHwgVlJBTSk7IGRyb3AgQ1BVIGRvbWFp
biAoQ2hyaXN0aWFuKQ0KdjI6DQotIG9ubHkgdXNlIG1hcGFibGUgZG9tYWlucyAoQ2hyaXN0aWFu
KQ0KLSB0cnkgcGlubmluZyB0byBkb21haW5zIGluIHByZWZlcnJlZCBvcmRlcg0KDQpTaWduZWQt
b2ZmLWJ5OiBUaG9tYXMgWmltbWVybWFubiA8dHppbW1lcm1hbm5Ac3VzZS5kZT4NCkZpeGVzOiA2
NjBjZDQ0NjU5YTAgKCJkcm0vc2htZW0taGVscGVyOiBJbXBvcnQgZG1hYnVmIHdpdGhvdXQgbWFw
cGluZyBpdHMgc2dfdGFibGUiKQ0KUmVwb3J0ZWQtYnk6IFRob21hcyBaaW1tZXJtYW5uIDx0emlt
bWVybWFubkBzdXNlLmRlPg0KQ2xvc2VzOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9kcmktZGV2
ZWwvYmExYmRmYjgtZGJmNy00MzcyLWJkY2ItZGY3ZTA1MTFjNzAyQHN1c2UuZGUvDQpDYzogU2hp
eGlvbmcgT3UgPG91c2hpeGlvbmdAa3lsaW5vcy5jbj4NCkNjOiBUaG9tYXMgWmltbWVybWFubiA8
dHppbW1lcm1hbm5Ac3VzZS5kZT4NCkNjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5r
aG9yc3RAbGludXguaW50ZWwuY29tPg0KQ2M6IE1heGltZSBSaXBhcmQgPG1yaXBhcmRAa2VybmVs
Lm9yZz4NCkNjOiBEYXZpZCBBaXJsaWUgPGFpcmxpZWRAZ21haWwuY29tPg0KQ2M6IFNpbW9uYSBW
ZXR0ZXIgPHNpbW9uYUBmZndsbC5jaD4NCkNjOiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBs
aW5hcm8ub3JnPg0KQ2M6ICJDaHJpc3RpYW4gS8O2bmlnIiA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQu
Y29tPg0KQ2M6IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCkNjOiBsaW51eC1tZWRp
YUB2Z2VyLmtlcm5lbC5vcmcNCkNjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcNCkxp
bms6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2RyaS1kZXZlbC85NzkyYzZjMy1hMmI4LTRiMmIt
YjViYS1mYmExOWIxNTNlMjFAc3VzZS5kZS8gIyBbMV0NCi0tLQ0KIGRyaXZlcnMvZ3B1L2RybS9h
bWQvYW1kZ3B1L2FtZGdwdV9kbWFfYnVmLmMgfCAzNCArKysrKysrKysrKysrKysrKysrLS0NCiAx
IGZpbGUgY2hhbmdlZCwgMzIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCg0KZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kbWFfYnVmLmMgYi9kcml2
ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZG1hX2J1Zi5jDQppbmRleCA1NzQzZWJiMmYx
YjcuLmNlMjdjYjViYjA1ZSAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1
L2FtZGdwdV9kbWFfYnVmLmMNCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdw
dV9kbWFfYnVmLmMNCkBAIC0yODUsNiArMjg1LDM2IEBAIHN0YXRpYyBpbnQgYW1kZ3B1X2RtYV9i
dWZfYmVnaW5fY3B1X2FjY2VzcyhzdHJ1Y3QgZG1hX2J1ZiAqZG1hX2J1ZiwNCiAJcmV0dXJuIHJl
dDsNCiB9DQogDQorc3RhdGljIGludCBhbWRncHVfZG1hX2J1Zl92bWFwKHN0cnVjdCBkbWFfYnVm
ICpkbWFfYnVmLCBzdHJ1Y3QgaW9zeXNfbWFwICptYXApDQorew0KKwlzdHJ1Y3QgZHJtX2dlbV9v
YmplY3QgKm9iaiA9IGRtYV9idWYtPnByaXY7DQorCXN0cnVjdCBhbWRncHVfYm8gKmJvID0gZ2Vt
X3RvX2FtZGdwdV9ibyhvYmopOw0KKwlpbnQgcmV0Ow0KKw0KKwkvKg0KKwkgKiBQaW4gdG8ga2Vl
cCBidWZmZXIgaW4gcGxhY2Ugd2hpbGUgaXQncyB2bWFwJ2VkLiBUaGUgYWN0dWFsDQorCSAqIGRv
bWFpbiBpcyBub3QgdGhhdCBpbXBvcnRhbnQgYXMgbG9uZyBhcyBpdCdzIG1hcGFibGUuIFVzaW5n
DQorCSAqIEdUVCBhbmQgVlJBTSBzaG91bGQgYmUgY29tcGF0aWJsZSB3aXRoIG1vc3QgdXNlIGNh
c2VzLg0KKwkgKi8NCisJcmV0ID0gYW1kZ3B1X2JvX3BpbihibywgQU1ER1BVX0dFTV9ET01BSU5f
R1RUIHwgQU1ER1BVX0dFTV9ET01BSU5fVlJBTSk7DQorCWlmIChyZXQpDQorCQlyZXR1cm4gcmV0
Ow0KKwlyZXQgPSBkcm1fZ2VtX2RtYWJ1Zl92bWFwKGRtYV9idWYsIG1hcCk7DQorCWlmIChyZXQp
DQorCQlhbWRncHVfYm9fdW5waW4oYm8pOw0KKw0KKwlyZXR1cm4gcmV0Ow0KK30NCisNCitzdGF0
aWMgdm9pZCBhbWRncHVfZG1hX2J1Zl92dW5tYXAoc3RydWN0IGRtYV9idWYgKmRtYV9idWYsIHN0
cnVjdCBpb3N5c19tYXAgKm1hcCkNCit7DQorCXN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqID0g
ZG1hX2J1Zi0+cHJpdjsNCisJc3RydWN0IGFtZGdwdV9ibyAqYm8gPSBnZW1fdG9fYW1kZ3B1X2Jv
KG9iaik7DQorDQorCWRybV9nZW1fZG1hYnVmX3Z1bm1hcChkbWFfYnVmLCBtYXApOw0KKwlhbWRn
cHVfYm9fdW5waW4oYm8pOw0KK30NCisNCiBjb25zdCBzdHJ1Y3QgZG1hX2J1Zl9vcHMgYW1kZ3B1
X2RtYWJ1Zl9vcHMgPSB7DQogCS5hdHRhY2ggPSBhbWRncHVfZG1hX2J1Zl9hdHRhY2gsDQogCS5w
aW4gPSBhbWRncHVfZG1hX2J1Zl9waW4sDQpAQCAtMjk0LDggKzMyNCw4IEBAIGNvbnN0IHN0cnVj
dCBkbWFfYnVmX29wcyBhbWRncHVfZG1hYnVmX29wcyA9IHsNCiAJLnJlbGVhc2UgPSBkcm1fZ2Vt
X2RtYWJ1Zl9yZWxlYXNlLA0KIAkuYmVnaW5fY3B1X2FjY2VzcyA9IGFtZGdwdV9kbWFfYnVmX2Jl
Z2luX2NwdV9hY2Nlc3MsDQogCS5tbWFwID0gZHJtX2dlbV9kbWFidWZfbW1hcCwNCi0JLnZtYXAg
PSBkcm1fZ2VtX2RtYWJ1Zl92bWFwLA0KLQkudnVubWFwID0gZHJtX2dlbV9kbWFidWZfdnVubWFw
LA0KKwkudm1hcCA9IGFtZGdwdV9kbWFfYnVmX3ZtYXAsDQorCS52dW5tYXAgPSBhbWRncHVfZG1h
X2J1Zl92dW5tYXAsDQogfTsNCiANCiAvKioNCi0tIA0KMi41MC4xDQoNCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBs
aXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5k
IGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
