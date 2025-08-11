Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A778FB2137F
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Aug 2025 19:40:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D0E6B447F1
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Aug 2025 17:40:52 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 5FADF441DD
	for <linaro-mm-sig@lists.linaro.org>; Mon, 11 Aug 2025 17:40:41 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=UstHmftV;
	spf=pass (lists.linaro.org: domain of vkoul@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=vkoul@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id D43A95C5D0A;
	Mon, 11 Aug 2025 17:40:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 853A5C4CEED;
	Mon, 11 Aug 2025 17:40:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754934040;
	bh=vNeEGZtQOxuFBJ03hCHxJ0zqee0UqgJZnTvwQUQSHrQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UstHmftVxCQTMDVIZqfzPXOXwi8NsvUVZuh7gnMbMAJO75iNtUapyN9pt3lojXddG
	 2JFtVrEKDxONVM+YH8C2IvIIA7hW9k5x3y+nGBYfkkHsZivSgcckFrYyrVvKG794QY
	 d0LyZfmVRfv+7aJfjat6kooL3o32XbPKKfYad6koOc1zZFJ2NmE/n9yhm6hJx68cX6
	 svvQSl1PR4JA1TF76TO0BNZLm7vS2M/gL0QirKfeX5ZQ5DFqSd15GwcwnI9ZX51jTQ
	 +gGpSQCL4epXTgu32ZuurDjucscXI+fHhDm4gWOzEAkYGWOdBkaU6vkk42hgZU0bAO
	 ome+ZBHH2RKAA==
Date: Mon, 11 Aug 2025 23:10:35 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Jyothi Kumar Seerapu <quic_jseerapu@quicinc.com>
Message-ID: <aJorE6bL2d8se6E4@vaman>
References: <CAO9ioeVuAO6mYpBSpiTW0jhFRPtkubZ5eEskd1yLBHVdR8_YMA@mail.gmail.com>
 <1b55d9d4-f3ff-4cd9-8906-5f370da55732@quicinc.com>
 <28d26c70-178f-413b-b7f8-410c508cfdd7@quicinc.com>
 <CAO9ioeXBwFYL8q7x7_fHvx5YO+qyAXk4wpnfPrku4iY9yBsk0Q@mail.gmail.com>
 <cac5e84b-fbdb-47a9-860d-16a7fa4dc773@quicinc.com>
 <4q3vlydi5xgltd3pcez54alxgrehhfn4pppg47ngwp6y5k7n33@d4d4htntj64k>
 <53dd18ec-9a65-4bf7-8490-ca3eb56ce2a5@quicinc.com>
 <iang2jpe4s6wmbypmtq5uswcm6n6xntqdulyhekcz5k6zxddu3@re3rrr4dso5p>
 <aICMDROkyjzBZFHo@vaman>
 <8a149580-5044-4744-b432-9f0eef0a0d31@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8a149580-5044-4744-b432-9f0eef0a0d31@quicinc.com>
X-Spamd-Result: default: False [-3.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DWL_DNSWL_LOW(-1.00)[kernel.org:dkim];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:15830, ipnet:139.178.80.0/21, country:NL];
	RCPT_COUNT_TWELVE(0.00)[15];
	MISSING_XM_UA(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DNSWL_BLOCKED(0.00)[100.75.92.58:received,139.178.84.217:from];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 5FADF441DD
X-Spamd-Bar: --
Message-ID-Hash: TO7WOI3QR6AZMKHOWDBCDLATXML2Y3VW
X-Message-ID-Hash: TO7WOI3QR6AZMKHOWDBCDLATXML2Y3VW
X-MailFrom: vkoul@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Mukesh Kumar Savaliya <quic_msavaliy@quicinc.com>, Viken Dadhaniya <quic_vdadhani@quicinc.com>, Andi Shyti <andi.shyti@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linux-arm-msm@vger.kernel.org, dmaengine@vger.kernel.org, linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, quic_vtanuku@quicinc.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v6 2/2] i2c: i2c-qcom-geni: Add Block event interrupt support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TO7WOI3QR6AZMKHOWDBCDLATXML2Y3VW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMjUtMDctMjUsIDE2OjIwLCBKeW90aGkgS3VtYXIgU2VlcmFwdSB3cm90ZToNCj4gDQo+IA0K
PiBPbiA3LzIzLzIwMjUgMTI6NDUgUE0sIFZpbm9kIEtvdWwgd3JvdGU6DQo+ID4gT24gMjItMDct
MjUsIDE1OjQ2LCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOg0KPiA+ID4gT24gVHVlLCBKdWwgMjIs
IDIwMjUgYXQgMDU6NTA6MDhQTSArMDUzMCwgSnlvdGhpIEt1bWFyIFNlZXJhcHUgd3JvdGU6DQo+
ID4gPiA+IE9uIDcvMTkvMjAyNSAzOjI3IFBNLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOg0KPiA+
ID4gPiA+IE9uIE1vbiwgSnVsIDA3LCAyMDI1IGF0IDA5OjU4OjMwUE0gKzA1MzAsIEp5b3RoaSBL
dW1hciBTZWVyYXB1IHdyb3RlOg0KPiA+ID4gPiA+ID4gT24gNy80LzIwMjUgMToxMSBBTSwgRG1p
dHJ5IEJhcnlzaGtvdiB3cm90ZToNCj4gPiA+ID4gPiA+ID4gT24gVGh1LCAzIEp1bCAyMDI1IGF0
IDE1OjUxLCBKeW90aGkgS3VtYXIgU2VlcmFwdQ0KPiA+IA0KPiA+IFtGb2xrcywgd291bGQgYmUg
bmljZSB0byB0cmltIHJlcGxpZXNdDQo+ID4gDQo+ID4gPiA+ID4gPiBDb3VsZCB5b3UgcGxlYXNl
IGNvbmZpcm0gaWYgY2FuIGdvIHdpdGggdGhlIHNpbWlsYXIgYXBwcm9hY2ggb2YgdW5tYXAgdGhl
DQo+ID4gPiA+ID4gPiBwcm9jZXNzZWQgVFJFcyBiYXNlZCBvbiBhIGZpeGVkIHRocmVzaG9sZCBv
ciBjb25zdGFudCB2YWx1ZSwgaW5zdGVhZCBvZg0KPiA+ID4gPiA+ID4gdW5tYXBwaW5nIHRoZW0g
YWxsIGF0IG9uY2U/DQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gSSdkIHN0aWxsIHNheSwgdGhhdCdz
IGEgYmFkIGlkZWEuIFBsZWFzZSBzdGF5IHdpdGhpbiB0aGUgYm91bmRhcmllcyBvZg0KPiA+ID4g
PiA+IHRoZSBETUEgQVBJLg0KPiA+ID4gPiA+IA0KPiA+ID4gPiBJIGFncmVlIHdpdGggdGhlIGFw
cHJvYWNoIHlvdSBzdWdnZXN0ZWTigJRpdCdzIHRoZSBHUEkncyByZXNwb25zaWJpbGl0eSB0bw0K
PiA+ID4gPiBtYW5hZ2UgdGhlIGF2YWlsYWJsZSBUUkVzLg0KPiA+ID4gPiANCj4gPiA+ID4gSG93
ZXZlciwgSSdtIGN1cmlvdXMgd2hldGhlciBjYW4gd2Ugc2V0IGEgZHluYW1pYyB3YXRlcm1hcmsg
dmFsdWUgcGVyaGFwcw0KPiA+ID4gPiBoYWxmIHRoZSBhdmFpbGFibGUgVFJFcykgdG8gdHJpZ2dl
ciB1bm1hcHBpbmcgb2YgcHJvY2Vzc2VkIFRSRXMgPyBUaGlzIHdvdWxkDQo+ID4gPiA+IGFsbG93
IHRoZSBzb2Z0d2FyZSB0byBwcmVwYXJlIHRoZSBuZXh0IHNldCBvZiBUUkVzIHdoaWxlIHRoZSBo
YXJkd2FyZQ0KPiA+ID4gPiBjb250aW51ZXMgcHJvY2Vzc2luZyB0aGUgcmVtYWluaW5nIG9uZXMs
IGVuYWJsaW5nIGJldHRlciBwYXJhbGxlbGlzbSBhbmQNCj4gPiA+ID4gdGhyb3VnaHB1dC4NCj4g
PiA+IA0KPiA+ID4gTGV0J3MgbGFuZCB0aGUgc2ltcGxlIGltcGxlbWVudGF0aW9uIGZpcnN0LCB3
aGljaCBjYW4gdGhlbiBiZSBpbXByb3ZlZC4NCj4gPiA+IEhvd2V2ZXIgSSBkb24ndCBzZWUgYW55
IHdheSB0byByZXR1cm4gJ2Fib3ZlIHRoZSB3YXRlcm1hcmsnIGZyb20gdGhlIERNQQ0KPiA+ID4g
Y29udHJvbGxlci4gWW91IG1pZ2h0IG5lZWQgdG8gZW5oYW5jZSB0aGUgQVBJLg0KPiA+IA0KPiA+
IFRyYWRpdGlvbmFsbHksIHdlIHNldCB0aGUgZG1hIHRyYW5zZmVycyBmb3Igd2F0ZXJtYXJrIGxl
dmVsIGFuZCB3ZSBnZXQgYQ0KPiA+IGludGVycnVwdC4gU28geW91IG1pZ2h0IHdhbnQgdG8gc2V0
IHRoZSBjYWxsYmFjayBmb3Igd2F0ZXJtYXJrIGxldmVsDQo+ID4gYW5kIHRoZW4gZG8gbWFwcGlu
Zy91bm1hcHBpbmcgZXRjIGluIHRoZSBjYWxsYmFjay4gVGhpcyBpcyB0eXBpY2FsIG1vZGVsDQo+
ID4gZm9yIGRtYWVuZ2luZXMsIHdlIHNob3VsZCBmb2xsb3cgdGhhdCB3ZWxsDQo+ID4gDQo+ID4g
QlINCj4gDQo+IFRoYW5rcyBEbWl0cnkgYW5kIFZpbm9kLCBJIHdpbGwgd29yayBvbiBWNyBwYXRj
aCBmb3Igc3VibWl0dGluZyB0aGUgSTJDDQo+IG1lc3NhZ2VzIHVudGlsIHRoZXkgZml0IGFuZCBh
bmQgdW5tYXAgYWxsIHByb2Nlc3NlZCBtZXNzYWdlcyB0b2dldGhlciBmb3INCj4gbm93Lg0KPiAN
Cj4gUmVnYXJkaW5nIHRoZSB3YXRlcm1hcmsgbWVjaGFuaXNtLCBsb29rcyBHRU5JIFNFIERNQSBz
dXBwb3J0cyB3YXRlcm1hcmsNCj4gaW50ZXJydXB0cyBidXQgaXQgYXBwZWFycyB0aGF0IEdQSSBE
TUEgZG9lc24ndCBoYXZlIHN1Y2ggcHJvdmlzaW9uIG9mDQo+IHdhdGVybWFyay4NCg0KV2hhdCBp
cyB0aGUgbWVjaGFuaXNtIHRvIGdldCBpbnRlcnJ1cHRzIGZyb20gdGhlIEdQST8gSWYgeW91IHN1
Ym1pdCAxMA0KdHhuLCBjYW4geW91IGFzayBpdCB0byBpbnRlcnJ1cHQgd2hlbiBoYWxmIG9mIHRo
ZW0gYXJlIGRvbmU/DQoNCi0tIA0KflZpbm9kDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBs
aW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
