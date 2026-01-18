Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id DC27FD39828
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 18 Jan 2026 17:55:11 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F3B303F83E
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 18 Jan 2026 16:55:10 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 0E34D3F6FF
	for <linaro-mm-sig@lists.linaro.org>; Sun, 18 Jan 2026 16:54:59 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=lGP2O6nH;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 6F1B460010;
	Sun, 18 Jan 2026 16:54:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5206AC116D0;
	Sun, 18 Jan 2026 16:54:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768755297;
	bh=n2Vuoglr29P+Am665CpAVHFl07IdAZBI+QGtFaKFQjI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lGP2O6nHCIvn/gXeyAYUT7EKG1TfhEUbrCV3slk5fiufGNwRN/JlH1Nh9Rro1Eiot
	 uNSB7Gt/82lOM14VVAnolDjaioC/0LE+BMf7d49jjaWVGrCnJ5/721fcCqpJSJz5rf
	 pAxH4kqkmh7HCbKCqiQhD2tO5uoNHKzbS1iNOAIPKAOQ05YG7CNClfw3GiKG1//CvY
	 pCSDvXJ0eEH02bk04drzqjqr9bdxmiqJuCcKaylFhL3DwafW4Y2CdPWHygoiszQoPP
	 DiiUpBe1EQiC4k2UobSjFfZlBYywiipIpF+ra0uR+C87+ry46tWTyiIY+SKY2O9kP/
	 BTQYyeDz7IJmQ==
Date: Sun, 18 Jan 2026 18:54:53 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Alex Williamson <alex@shazbot.org>
Message-ID: <20260118165453.GB13201@unreal>
References: <20260107-convert-to-pvec-v1-1-6e3ab8079708@nvidia.com>
 <20260114121819.GB10680@unreal>
 <20260116101455.45e39650@shazbot.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260116101455.45e39650@shazbot.org>
X-Rspamd-Queue-Id: 0E34D3F6FF
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.4.254];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[19];
	ASN(0.00)[asn:63949, ipnet:172.105.0.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	URIBL_BLOCKED(0.00)[tor.source.kernel.org:helo,tor.source.kernel.org:rdns,nvidia.com:email];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[100.75.92.58:received,172.105.4.254:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: W34T5TQB6ORBGARF5KNG7WDYV5EKX7HT
X-Message-ID-Hash: W34T5TQB6ORBGARF5KNG7WDYV5EKX7HT
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Jason Gunthorpe <jgg@ziepe.ca>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Yishai Hadas <yishaih@nvidia.com>, Shameer Kolothum <skolothumtho@nvidia.com>, Ankit Agrawal <ankita@nvidia.com>, Matthew Wilcox <willy@infradead.org>, Jens Axboe <axboe@kernel.dk>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig]  Re: types: reuse common =?utf-8?q?phys=5Fvec_type_instead_of_DMABUF_open=E2=80=91coded?= variant
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/W34T5TQB6ORBGARF5KNG7WDYV5EKX7HT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gRnJpLCBKYW4gMTYsIDIwMjYgYXQgMTA6MTQ6NTVBTSAtMDcwMCwgQWxleCBXaWxsaWFtc29u
IHdyb3RlOg0KPiBPbiBXZWQsIDE0IEphbiAyMDI2IDE0OjE4OjE5ICswMjAwDQo+IExlb24gUm9t
YW5vdnNreSA8bGVvbkBrZXJuZWwub3JnPiB3cm90ZToNCj4gDQo+ID4gT24gV2VkLCBKYW4gMDcs
IDIwMjYgYXQgMTE6MTQ6MTRBTSArMDIwMCwgTGVvbiBSb21hbm92c2t5IHdyb3RlOg0KPiA+ID4g
RnJvbTogTGVvbiBSb21hbm92c2t5IDxsZW9ucm9AbnZpZGlhLmNvbT4NCj4gPiA+IA0KPiA+ID4g
QWZ0ZXIgY29tbWl0IGZjZjQ2M2I5MmEwOCAoInR5cGVzOiBtb3ZlIHBoeXNfdmVjIGRlZmluaXRp
b24gdG8gY29tbW9uIGhlYWRlciIpLA0KPiA+ID4gd2UgY2FuIHVzZSB0aGUgc2hhcmVkIHBoeXNf
dmVjIHR5cGUgaW5zdGVhZCBvZiB0aGUgRE1BQlVG4oCRc3BlY2lmaWMNCj4gPiA+IGRtYV9idWZf
cGh5c192ZWMsIHdoaWNoIGR1cGxpY2F0ZWQgdGhlIHNhbWUgc3RydWN0dXJlIGFuZCBzZW1hbnRp
Y3MuDQo+ID4gPiANCj4gPiA+IFNpZ25lZC1vZmYtYnk6IExlb24gUm9tYW5vdnNreSA8bGVvbnJv
QG52aWRpYS5jb20+DQo+ID4gPiAtLS0NCj4gPiA+IEFsZXgsDQo+ID4gPiANCj4gPiA+IEFjY29y
ZGluZyB0byBkaWZmc3RhdCwgVkZJTyBpcyB0aGUgc3Vic3lzdGVtIHdpdGggdGhlIGxhcmdlc3Qg
c2V0IG9mIGNoYW5nZXMsDQo+ID4gPiBzbyBpdCB3b3VsZCBiZSBncmVhdCBpZiB5b3UgY291bGQg
dGFrZSBpdCB0aHJvdWdoIHlvdXIgdHJlZS4NCj4gPiA+IA0KPiA+ID4gVGhlIHNlcmllcyBpcyBi
YXNlZCBvbiB0aGUgZm9yLTcuMC9ibGstcHZlYyBzaGFyZWQgYnJhbmNoIGZyb20gSmVuczoNCj4g
PiA+IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L2F4Ym9l
L2xpbnV4LmdpdC9sb2cvP2g9Zm9yLTcuMC9ibGstcHZlYw0KPiA+ID4gDQo+ID4gPiBUaGFua3MN
Cj4gPiA+IC0tLSAgDQo+ID4gDQo+ID4gQWxleCwNCj4gPiANCj4gPiBDb3VsZCB5b3UgcGxlYXNl
IG1vdmUgdGhpcyBwYXRjaCBmb3J3YXJkPyBXZSBoYXZlIHRoZSBSRE1BIHNlcmllcyBbMV0gdGhh
dA0KPiA+IGRlcGVuZHMgb24gdGhpcyByZW5hbWUsIGFuZCBJIHdvdWxkIGxpa2UgdG8gYmFzZSBp
dCBvbiB0aGUgc2hhcmVkIGJyYW5jaC4NCj4gPiANCj4gPiBbMV0gaHR0cHM6Ly9sb3JlLmtlcm5l
bC5vcmcvYWxsLzIwMjYwMTA4LWRtYWJ1Zi1leHBvcnQtdjEtMC02ZDQ3ZDQ2NTgwZDNAbnZpZGlh
LmNvbS8NCj4gDQo+IEkgdHJpZWQgdG8gcGluZyBKZW5zIHJlZ2FyZGluZyB3aHkgdGhlIGJyYW5j
aCB3aXRoIHRoaXMgY29kZSBoYXNuJ3QNCj4gYmVlbiBtZXJnZWQgaW50byB0aGVpciBmb3ItbmV4
dCBicmFuY2gsIG1heWJlIHlvdSBoYXZlIG1vcmUgdHJhY3Rpb24uDQoNCkl0IGlzIGluIGJsb2Nr
L2Zvci1uZXh0IG5vdywgY29tbWl0IGRmNzNkM2M2MThiNCAoIk1lcmdlIGJyYW5jaA0KJ2Zvci03
LjAvYmxrLXB2ZWMnIGludG8gZm9yLTcuMC9ibG9jayIuDQoNClRoYW5rcw0KDQo+IFRoYW5rcywN
Cj4gDQo+IEFsZXgNCj4gDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2ln
LWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
