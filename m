Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A7F01B2AC7B
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 Aug 2025 17:20:12 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 76946446CB
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 Aug 2025 15:20:11 +0000 (UTC)
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.223.131])
	by lists.linaro.org (Postfix) with ESMTPS id 1DC5045DEE
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 Aug 2025 15:20:03 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=Os6WKQEs;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=y1dcXw5g;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=THw06Wya;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=Eu8Vdq0f;
	spf=pass (lists.linaro.org: domain of tzimmermann@suse.de designates 195.135.223.131 as permitted sender) smtp.mailfrom=tzimmermann@suse.de;
	dmarc=pass (policy=none) header.from=suse.de
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org [IPv6:2a07:de40:b281:104:10:150:64:97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id C6CC81F387;
	Mon, 18 Aug 2025 15:20:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1755530402; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=gTGZcbGAhtvP7tJl3ZoYm8rrknDDxNGavt/SiFlcvKo=;
	b=Os6WKQEslxwsA6G1+OlI0E+uK+XzSJyiBTEnWaLfUOjt8uTf4cuHmBCCA/gZwD6yfKJV6H
	1nXurn8lxbgQHQcjf079fIt+EVQsYeLDp+nh7v3zADonYYVZF8RPm8gWIHSzBn+SrFdS4U
	cKd3imiwsvkT6FRHtp/fKcrQaan154I=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1755530402;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=gTGZcbGAhtvP7tJl3ZoYm8rrknDDxNGavt/SiFlcvKo=;
	b=y1dcXw5g1GE6xfu2POqaDgkZi+cdTx+mddRRmrhGjxJJNeNPqxkTNEzX9xaJ1TVigmgzlH
	TW8CzdRc0ddcqCCQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1755530401; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=gTGZcbGAhtvP7tJl3ZoYm8rrknDDxNGavt/SiFlcvKo=;
	b=THw06WyaVXwVwYexR54jkB62f+ewjw2T25y8UiooHJSCKLwgaUsS8abPo2WVFvtnSMO18w
	uFA2VFYp/woG2JFIB778brbxCroAVqj6mDeJKE2pHg2M9WjYpKHZ/UXHih6af2Dd1otZCl
	fMSXSfTXcfxd9ya/QgGBdXMxIgXtUqE=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1755530401;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=gTGZcbGAhtvP7tJl3ZoYm8rrknDDxNGavt/SiFlcvKo=;
	b=Eu8Vdq0fwoYKK/tCwXXBwcwnVa+V8rwf5u1lsO64zTAcNYDNZ/ec2DN5I0Mp1GKyGpM1l3
	AuY59Ey5GrOuS/CA==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 68EEB13A55;
	Mon, 18 Aug 2025 15:20:01 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id L0ltGKFEo2hGLwAAD6G6ig
	(envelope-from <tzimmermann@suse.de>); Mon, 18 Aug 2025 15:20:01 +0000
From: Thomas Zimmermann <tzimmermann@suse.de>
To: sumit.semwal@linaro.org,
	christian.koenig@amd.com,
	oushixiong@kylinos.cn,
	alexander.deucher@amd.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	airlied@gmail.com,
	simona@ffwll.ch
Date: Mon, 18 Aug 2025 17:17:05 +0200
Message-ID: <20250818151710.284982-1-tzimmermann@suse.de>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
X-Spam-Flag: NO
X-Spam-Level: 
X-Spam-Score: -3.51
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 1DC5045DEE
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[suse.de,none];
	R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	R_SPF_ALLOW(-0.20)[+ip4:195.135.223.131/32:c];
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
Message-ID-Hash: CFOWYJPLDT6VCEWBBXHXALIZKYB6OYUT
X-Message-ID-Hash: CFOWYJPLDT6VCEWBBXHXALIZKYB6OYUT
X-MailFrom: tzimmermann@suse.de
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2] drm/amdgpu: Pin buffers while vmap'ing exported dma-buf objects
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CFOWYJPLDT6VCEWBBXHXALIZKYB6OYUT/>
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
bGFibGUNCmF0IFsxXS4NCg0KdjI6DQotIG9ubHkgdXNlIG1hcGFibGUgZG9tYWlucyAoQ2hyaXN0
aWFuKQ0KLSB0cnkgcGlubmluZyB0byBkb21haW5zIGluIHByZWZlcmVkIG9yZGVyDQoNClNpZ25l
ZC1vZmYtYnk6IFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPg0KRml4ZXM6
IDY2MGNkNDQ2NTlhMCAoImRybS9zaG1lbS1oZWxwZXI6IEltcG9ydCBkbWFidWYgd2l0aG91dCBt
YXBwaW5nIGl0cyBzZ190YWJsZSIpDQpSZXBvcnRlZC1ieTogVGhvbWFzIFppbW1lcm1hbm4gPHR6
aW1tZXJtYW5uQHN1c2UuZGU+DQpDbG9zZXM6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2RyaS1k
ZXZlbC9iYTFiZGZiOC1kYmY3LTQzNzItYmRjYi1kZjdlMDUxMWM3MDJAc3VzZS5kZS8NCkNjOiBT
aGl4aW9uZyBPdSA8b3VzaGl4aW9uZ0BreWxpbm9zLmNuPg0KQ2M6IFRob21hcyBaaW1tZXJtYW5u
IDx0emltbWVybWFubkBzdXNlLmRlPg0KQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxh
bmtob3JzdEBsaW51eC5pbnRlbC5jb20+DQpDYzogTWF4aW1lIFJpcGFyZCA8bXJpcGFyZEBrZXJu
ZWwub3JnPg0KQ2M6IERhdmlkIEFpcmxpZSA8YWlybGllZEBnbWFpbC5jb20+DQpDYzogU2ltb25h
IFZldHRlciA8c2ltb25hQGZmd2xsLmNoPg0KQ2M6IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2Fs
QGxpbmFyby5vcmc+DQpDYzogIkNocmlzdGlhbiBLw7ZuaWciIDxjaHJpc3RpYW4ua29lbmlnQGFt
ZC5jb20+DQpDYzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KQ2M6IGxpbnV4LW1l
ZGlhQHZnZXIua2VybmVsLm9yZw0KQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZw0K
TGluazogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvZHJpLWRldmVsLzk3OTJjNmMzLWEyYjgtNGIy
Yi1iNWJhLWZiYTE5YjE1M2UyMUBzdXNlLmRlLyAjIFsxXQ0KU2lnbmVkLW9mZi1ieTogVGhvbWFz
IFppbW1lcm1hbm4gPHR6aW1tZXJtYW5uQHN1c2UuZGU+DQotLS0NCiBkcml2ZXJzL2dwdS9kcm0v
YW1kL2FtZGdwdS9hbWRncHVfZG1hX2J1Zi5jIHwgNDEgKysrKysrKysrKysrKysrKysrKystDQog
MSBmaWxlIGNoYW5nZWQsIDM5IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQoNCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZG1hX2J1Zi5jIGIvZHJp
dmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RtYV9idWYuYw0KaW5kZXggNTc0M2ViYjJm
MWI3Li40NzFiNDFiZDNlMjkgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdw
dS9hbWRncHVfZG1hX2J1Zi5jDQorKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRn
cHVfZG1hX2J1Zi5jDQpAQCAtMjg1LDYgKzI4NSw0MyBAQCBzdGF0aWMgaW50IGFtZGdwdV9kbWFf
YnVmX2JlZ2luX2NwdV9hY2Nlc3Moc3RydWN0IGRtYV9idWYgKmRtYV9idWYsDQogCXJldHVybiBy
ZXQ7DQogfQ0KIA0KK3N0YXRpYyBpbnQgYW1kZ3B1X2RtYV9idWZfdm1hcChzdHJ1Y3QgZG1hX2J1
ZiAqZG1hX2J1Ziwgc3RydWN0IGlvc3lzX21hcCAqbWFwKQ0KK3sNCisJc3RydWN0IGRybV9nZW1f
b2JqZWN0ICpvYmogPSBkbWFfYnVmLT5wcml2Ow0KKwlzdHJ1Y3QgYW1kZ3B1X2JvICpibyA9IGdl
bV90b19hbWRncHVfYm8ob2JqKTsNCisJaW50IHJldDsNCisNCisJLyoNCisJICogUGluIHRvIGtl
ZXAgYnVmZmVyIGluIHBsYWNlIHdoaWxlIGl0J3Mgdm1hcCdlZC4gVGhlIGFjdHVhbA0KKwkgKiBk
b21haW4gaXMgbm90IHRoYXQgaW1wb3J0YW50IGFzIGxvbmcgYXMgaXQncyBtYXBhYmxlLiBVc2lu
Zw0KKwkgKiBHVFQgc2hvdWxkIGJlIGNvbXBhdGlibGUgd2l0aCBtb3N0IHVzZSBjYXNlcy4gVlJB
TSBhbmQgQ1BVDQorCSAqIGFyZSB0aGUgZmFsbGJhY2tzIGlmIHRoZSBidWZmZXIgaGFzIGFscmVh
ZHkgYmVlbiBwaW5uZWQgdGhlcmUuDQorCSAqLw0KKwlyZXQgPSBhbWRncHVfYm9fcGluKGJvLCBB
TURHUFVfR0VNX0RPTUFJTl9HVFQpOw0KKwlpZiAocmV0KSB7DQorCQlyZXQgPSBhbWRncHVfYm9f
cGluKGJvLCBBTURHUFVfR0VNX0RPTUFJTl9WUkFNKTsNCisJCWlmIChyZXQpIHsNCisJCQlyZXQg
PSBhbWRncHVfYm9fcGluKGJvLCBBTURHUFVfR0VNX0RPTUFJTl9DUFUpOw0KKwkJCWlmIChyZXQp
DQorCQkJCXJldHVybiByZXQ7DQorCQl9DQorCX0NCisJcmV0ID0gZHJtX2dlbV9kbWFidWZfdm1h
cChkbWFfYnVmLCBtYXApOw0KKwlpZiAocmV0KQ0KKwkJYW1kZ3B1X2JvX3VucGluKGJvKTsNCisN
CisJcmV0dXJuIHJldDsNCit9DQorDQorc3RhdGljIHZvaWQgYW1kZ3B1X2RtYV9idWZfdnVubWFw
KHN0cnVjdCBkbWFfYnVmICpkbWFfYnVmLCBzdHJ1Y3QgaW9zeXNfbWFwICptYXApDQorew0KKwlz
dHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaiA9IGRtYV9idWYtPnByaXY7DQorCXN0cnVjdCBhbWRn
cHVfYm8gKmJvID0gZ2VtX3RvX2FtZGdwdV9ibyhvYmopOw0KKw0KKwlkcm1fZ2VtX2RtYWJ1Zl92
dW5tYXAoZG1hX2J1ZiwgbWFwKTsNCisJYW1kZ3B1X2JvX3VucGluKGJvKTsNCit9DQorDQogY29u
c3Qgc3RydWN0IGRtYV9idWZfb3BzIGFtZGdwdV9kbWFidWZfb3BzID0gew0KIAkuYXR0YWNoID0g
YW1kZ3B1X2RtYV9idWZfYXR0YWNoLA0KIAkucGluID0gYW1kZ3B1X2RtYV9idWZfcGluLA0KQEAg
LTI5NCw4ICszMzEsOCBAQCBjb25zdCBzdHJ1Y3QgZG1hX2J1Zl9vcHMgYW1kZ3B1X2RtYWJ1Zl9v
cHMgPSB7DQogCS5yZWxlYXNlID0gZHJtX2dlbV9kbWFidWZfcmVsZWFzZSwNCiAJLmJlZ2luX2Nw
dV9hY2Nlc3MgPSBhbWRncHVfZG1hX2J1Zl9iZWdpbl9jcHVfYWNjZXNzLA0KIAkubW1hcCA9IGRy
bV9nZW1fZG1hYnVmX21tYXAsDQotCS52bWFwID0gZHJtX2dlbV9kbWFidWZfdm1hcCwNCi0JLnZ1
bm1hcCA9IGRybV9nZW1fZG1hYnVmX3Z1bm1hcCwNCisJLnZtYXAgPSBhbWRncHVfZG1hX2J1Zl92
bWFwLA0KKwkudnVubWFwID0gYW1kZ3B1X2RtYV9idWZfdnVubWFwLA0KIH07DQogDQogLyoqDQot
LSANCjIuNTAuMQ0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxl
YXZlQGxpc3RzLmxpbmFyby5vcmcK
