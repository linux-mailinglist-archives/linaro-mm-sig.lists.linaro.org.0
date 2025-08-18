Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id EECCCB29C88
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 Aug 2025 10:44:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5B04644B37
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 Aug 2025 08:44:47 +0000 (UTC)
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.223.130])
	by lists.linaro.org (Postfix) with ESMTPS id 5E1173F72D
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 Aug 2025 08:44:39 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=lc9J8qrH;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=78aJbRdA;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=lc9J8qrH;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=78aJbRdA;
	spf=pass (lists.linaro.org: domain of tzimmermann@suse.de designates 195.135.223.130 as permitted sender) smtp.mailfrom=tzimmermann@suse.de;
	dmarc=pass (policy=none) header.from=suse.de
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id 26055210F4;
	Mon, 18 Aug 2025 08:44:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1755506678; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=ChDTJIm+CdJKaw84pMFBSuou82Gt27yyrHFbFT0v0Ww=;
	b=lc9J8qrHwVC66yGjYqAQvdZZpRduKxjhISz6KhLSoY/P/C/c5VtP8PHXN0zairjCt5qWIs
	Y70hX3BXOxwexlAURNxhAsZ3uyEUvKj2aQKFpapkJV88QC678gqCbVLjxXtwCVilQPAu+e
	yz9JhH6rVGTeBLGAaVWJogEyoY0Wzmk=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1755506678;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=ChDTJIm+CdJKaw84pMFBSuou82Gt27yyrHFbFT0v0Ww=;
	b=78aJbRdA78VwqnTR+ZyIMp3l+mroMJr2OIglUnImaHfpnhD/FP/mt8Dv+sTNaZAE5cI5ok
	eu0GUuCEC1TR0xBQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1755506678; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=ChDTJIm+CdJKaw84pMFBSuou82Gt27yyrHFbFT0v0Ww=;
	b=lc9J8qrHwVC66yGjYqAQvdZZpRduKxjhISz6KhLSoY/P/C/c5VtP8PHXN0zairjCt5qWIs
	Y70hX3BXOxwexlAURNxhAsZ3uyEUvKj2aQKFpapkJV88QC678gqCbVLjxXtwCVilQPAu+e
	yz9JhH6rVGTeBLGAaVWJogEyoY0Wzmk=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1755506678;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=ChDTJIm+CdJKaw84pMFBSuou82Gt27yyrHFbFT0v0Ww=;
	b=78aJbRdA78VwqnTR+ZyIMp3l+mroMJr2OIglUnImaHfpnhD/FP/mt8Dv+sTNaZAE5cI5ok
	eu0GUuCEC1TR0xBQ==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id B756B13686;
	Mon, 18 Aug 2025 08:44:37 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id 29FPK/XnomhYLAAAD6G6ig
	(envelope-from <tzimmermann@suse.de>); Mon, 18 Aug 2025 08:44:37 +0000
From: Thomas Zimmermann <tzimmermann@suse.de>
To: sumit.semwal@linaro.org,
	christian.koenig@amd.com,
	oushixiong@kylinos.cn,
	alexander.deucher@amd.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	airlied@gmail.com,
	simona@ffwll.ch
Date: Mon, 18 Aug 2025 10:41:20 +0200
Message-ID: <20250818084148.212443-1-tzimmermann@suse.de>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
X-Spam-Flag: NO
X-Spam-Level: 
X-Spam-Score: -3.30
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 5E1173F72D
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[suse.de,none];
	R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	R_SPF_ALLOW(-0.20)[+ip4:195.135.223.130/32];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:29298, ipnet:195.135.223.0/24, country:DE];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_TLS_ALL(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[linaro.org,amd.com,kylinos.cn,linux.intel.com,kernel.org,gmail.com,ffwll.ch];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[suse.de:+]
Message-ID-Hash: NLUO7NGRNBP54HGZGAMIWVDVYMRWB3MT
X-Message-ID-Hash: NLUO7NGRNBP54HGZGAMIWVDVYMRWB3MT
X-MailFrom: tzimmermann@suse.de
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] drm/amdgpu: Pin buffer while vmap'ing exported dma-buf objects
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NLUO7NGRNBP54HGZGAMIWVDVYMRWB3MT/>
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
bGFibGUNCmF0IFsxXS4NCg0KU2lnbmVkLW9mZi1ieTogVGhvbWFzIFppbW1lcm1hbm4gPHR6aW1t
ZXJtYW5uQHN1c2UuZGU+DQpGaXhlczogNjYwY2Q0NDY1OWEwICgiZHJtL3NobWVtLWhlbHBlcjog
SW1wb3J0IGRtYWJ1ZiB3aXRob3V0IG1hcHBpbmcgaXRzIHNnX3RhYmxlIikNClJlcG9ydGVkLWJ5
OiBUaG9tYXMgWmltbWVybWFubiA8dHppbW1lcm1hbm5Ac3VzZS5kZT4NCkNsb3NlczogaHR0cHM6
Ly9sb3JlLmtlcm5lbC5vcmcvZHJpLWRldmVsL2JhMWJkZmI4LWRiZjctNDM3Mi1iZGNiLWRmN2Uw
NTExYzcwMkBzdXNlLmRlLw0KQ2M6IFNoaXhpb25nIE91IDxvdXNoaXhpb25nQGt5bGlub3MuY24+
DQpDYzogVGhvbWFzIFppbW1lcm1hbm4gPHR6aW1tZXJtYW5uQHN1c2UuZGU+DQpDYzogTWFhcnRl
biBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4NCkNjOiBNYXhp
bWUgUmlwYXJkIDxtcmlwYXJkQGtlcm5lbC5vcmc+DQpDYzogRGF2aWQgQWlybGllIDxhaXJsaWVk
QGdtYWlsLmNvbT4NCkNjOiBTaW1vbmEgVmV0dGVyIDxzaW1vbmFAZmZ3bGwuY2g+DQpDYzogU3Vt
aXQgU2Vtd2FsIDxzdW1pdC5zZW13YWxAbGluYXJvLm9yZz4NCkNjOiAiQ2hyaXN0aWFuIEvDtm5p
ZyIgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCkNjOiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnDQpDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnDQpDYzogbGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnDQpMaW5rOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9kcmkt
ZGV2ZWwvOTc5MmM2YzMtYTJiOC00YjJiLWI1YmEtZmJhMTliMTUzZTIxQHN1c2UuZGUvICMgWzFd
DQotLS0NCiBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZG1hX2J1Zi5jIHwgMzYg
KysrKysrKysrKysrKysrKysrKy0tDQogMSBmaWxlIGNoYW5nZWQsIDM0IGluc2VydGlvbnMoKyks
IDIgZGVsZXRpb25zKC0pDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdw
dS9hbWRncHVfZG1hX2J1Zi5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2Rt
YV9idWYuYw0KaW5kZXggNTc0M2ViYjJmMWI3Li41YjMzNzc2ZWVlY2UgMTAwNjQ0DQotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZG1hX2J1Zi5jDQorKysgYi9kcml2ZXJz
L2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZG1hX2J1Zi5jDQpAQCAtMjg1LDYgKzI4NSwzOCBA
QCBzdGF0aWMgaW50IGFtZGdwdV9kbWFfYnVmX2JlZ2luX2NwdV9hY2Nlc3Moc3RydWN0IGRtYV9i
dWYgKmRtYV9idWYsDQogCXJldHVybiByZXQ7DQogfQ0KIA0KK3N0YXRpYyBpbnQgYW1kZ3B1X2Rt
YV9idWZfdm1hcChzdHJ1Y3QgZG1hX2J1ZiAqZG1hX2J1Ziwgc3RydWN0IGlvc3lzX21hcCAqbWFw
KQ0KK3sNCisJc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmogPSBkbWFfYnVmLT5wcml2Ow0KKwlz
dHJ1Y3QgYW1kZ3B1X2JvICpibyA9IGdlbV90b19hbWRncHVfYm8ob2JqKTsNCisJaW50IHJldDsN
CisNCisJLyoNCisJICogUGluIHRvIGtlZXAgYnVmZmVyIGluIHBsYWNlIHdoaWxlIGl0J3Mgdm1h
cCdlZC4gVGhlIGFjdHVhbA0KKwkgKiBsb2NhdGlvbiBpcyBub3QgaW1wb3J0YW50IGFzIGxvbmcg
YXMgaXQncyBtYXBhYmxlLg0KKwkgKg0KKwkgKiBUaGlzIGNvZGUgaXMgcmVxdWlyZWQgZm9yIGV4
cG9ydGluZyB0byBHRU0tU0hNRU0gd2l0aG91dCBTL0cgdGFibGUuDQorCSAqIE9uY2UgR0VNLVNI
TUVNIHN1cHBvcnRzIGR5bmFtaWMgaW1wb3J0cywgaXQgc2hvdWxkIGJlIGRyb3BwZWQuDQorCSAq
Lw0KKwlyZXQgPSBhbWRncHVfYm9fcGluKGJvLCBBTURHUFVfR0VNX0RPTUFJTl9NQVNLKTsNCisJ
aWYgKHJldCkNCisJCXJldHVybiByZXQ7DQorCXJldCA9IGRybV9nZW1fZG1hYnVmX3ZtYXAoZG1h
X2J1ZiwgbWFwKTsNCisJaWYgKHJldCkNCisJCWFtZGdwdV9ib191bnBpbihibyk7DQorDQorCXJl
dHVybiByZXQ7DQorfQ0KKw0KK3N0YXRpYyB2b2lkIGFtZGdwdV9kbWFfYnVmX3Z1bm1hcChzdHJ1
Y3QgZG1hX2J1ZiAqZG1hX2J1Ziwgc3RydWN0IGlvc3lzX21hcCAqbWFwKQ0KK3sNCisJc3RydWN0
IGRybV9nZW1fb2JqZWN0ICpvYmogPSBkbWFfYnVmLT5wcml2Ow0KKwlzdHJ1Y3QgYW1kZ3B1X2Jv
ICpibyA9IGdlbV90b19hbWRncHVfYm8ob2JqKTsNCisNCisJZHJtX2dlbV9kbWFidWZfdnVubWFw
KGRtYV9idWYsIG1hcCk7DQorCWFtZGdwdV9ib191bnBpbihibyk7DQorfQ0KKw0KIGNvbnN0IHN0
cnVjdCBkbWFfYnVmX29wcyBhbWRncHVfZG1hYnVmX29wcyA9IHsNCiAJLmF0dGFjaCA9IGFtZGdw
dV9kbWFfYnVmX2F0dGFjaCwNCiAJLnBpbiA9IGFtZGdwdV9kbWFfYnVmX3BpbiwNCkBAIC0yOTQs
OCArMzI2LDggQEAgY29uc3Qgc3RydWN0IGRtYV9idWZfb3BzIGFtZGdwdV9kbWFidWZfb3BzID0g
ew0KIAkucmVsZWFzZSA9IGRybV9nZW1fZG1hYnVmX3JlbGVhc2UsDQogCS5iZWdpbl9jcHVfYWNj
ZXNzID0gYW1kZ3B1X2RtYV9idWZfYmVnaW5fY3B1X2FjY2VzcywNCiAJLm1tYXAgPSBkcm1fZ2Vt
X2RtYWJ1Zl9tbWFwLA0KLQkudm1hcCA9IGRybV9nZW1fZG1hYnVmX3ZtYXAsDQotCS52dW5tYXAg
PSBkcm1fZ2VtX2RtYWJ1Zl92dW5tYXAsDQorCS52bWFwID0gYW1kZ3B1X2RtYV9idWZfdm1hcCwN
CisJLnZ1bm1hcCA9IGFtZGdwdV9kbWFfYnVmX3Z1bm1hcCwNCiB9Ow0KIA0KIC8qKg0KLS0gDQoy
LjUwLjENCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8u
b3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBs
aXN0cy5saW5hcm8ub3JnCg==
