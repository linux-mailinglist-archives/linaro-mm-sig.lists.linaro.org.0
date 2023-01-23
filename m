Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C241677D23
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 23 Jan 2023 14:56:06 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5F4F93EC5F
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 23 Jan 2023 13:56:05 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	by lists.linaro.org (Postfix) with ESMTPS id B6B4E3EC5F
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Jan 2023 13:55:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ideasonboard.com header.s=mail header.b=MFHru+S3;
	spf=pass (lists.linaro.org: domain of laurent.pinchart@ideasonboard.com designates 213.167.242.64 as permitted sender) smtp.mailfrom=laurent.pinchart@ideasonboard.com;
	dmarc=none
Received: from pendragon.ideasonboard.com (213-243-189-158.bb.dnainternet.fi [213.243.189.158])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 2C5472B3;
	Mon, 23 Jan 2023 14:55:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1674482147;
	bh=6OMfBS4zGHxl1yc7Z1SfyOLfxUIVyVOKAzsjZUlbwBg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MFHru+S3ErLB/7W0Tpb/SZiqW9yw68qfr6PBEiiaSQXAgKr0x/qXMpAiFBDag+pTa
	 1+E1k4SkfIv3bi4zgVrIiujdlyvWcwGTwGSyuhGD3mEjcO99PXUWJmLtlJcMQNA3iB
	 sL1nG+YZm4EgklN4+7UbL6rIb5mYlIb8WvQ6AFtk=
Date: Mon, 23 Jan 2023 15:55:42 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Christian =?utf-8?B?S8O2bmln?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <Y86R3vQX+vW0+oxw@pendragon.ideasonboard.com>
References: <20230123123756.401692-1-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230123123756.401692-1-christian.koenig@amd.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B6B4E3EC5F
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_IN_DNSWL_HI(-1.00)[213.167.242.64:from,213.243.189.158:received];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	R_DKIM_ALLOW(-0.20)[ideasonboard.com:s=mail];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[pengutronix.de,ndufresne.ca,gmail.com,linaro.org,ffwll.ch,chromium.org,redhat.com,xs4all.nl,lists.freedesktop.org,lists.linaro.org,vger.kernel.org,collabora.com,codeaurora.org,arm.com,google.com,kernel.org,nvidia.com];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_TO(0.00)[gmail.com];
	ASN(0.00)[asn:29169, ipnet:213.167.240.0/20, country:FR];
	RCPT_COUNT_TWELVE(0.00)[20];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[ideasonboard.com:+];
	RCVD_TLS_ALL(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	TAGGED_RCPT(0.00)[];
	DMARC_NA(0.00)[ideasonboard.com];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
Message-ID-Hash: NH5FFDXADFV3IC56FNZ6CSQ6VC77UXWD
X-Message-ID-Hash: NH5FFDXADFV3IC56FNZ6CSQ6VC77UXWD
X-MailFrom: laurent.pinchart@ideasonboard.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: nicolas@ndufresne.ca, ppaalanen@gmail.com, sumit.semwal@linaro.org, daniel@ffwll.ch, robdclark@gmail.com, tfiga@chromium.org, sebastian.wick@redhat.com, hverkuil@xs4all.nl, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, benjamin.gaignard@collabora.com, lmark@codeaurora.org, labbott@redhat.com, Brian.Starkey@arm.com, jstultz@google.com, mchehab@kernel.org, James Jones <jajones@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: DMA-heap driver hints
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NH5FFDXADFV3IC56FNZ6CSQ6VC77UXWD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgQ2hyaXN0aWFuLA0KDQpDQydpbmcgSmFtZXMgYXMgSSB0aGluayB0aGlzIGlzIHJlbGF0ZWQg
dG8gaGlzIHdvcmsgb24gdGhlIHVuaXggZGV2aWNlDQptZW1vcnkgYWxsb2NhdG9yIChbMV0pLg0K
DQpbMV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvZHJpLWRldmVsLzhiNTU1Njc0LTFjNWItYzc5
MS00NTQ3LTJlYTdjMTZhZWU2Y0BudmlkaWEuY29tLw0KDQpPbiBNb24sIEphbiAyMywgMjAyMyBh
dCAwMTozNzo1NFBNICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPiBIaSBndXlzLA0K
PiANCj4gdGhpcyBpcyBqdXN0IGFuIFJGQyEgVGhlIGxhc3QgdGltZSB3ZSBkaXNjdXNzZWQgdGhl
IERNQS1idWYgY29oZXJlbmN5DQo+IHByb2JsZW0gWzFdIHdlIGNvbmNsdWRlZCB0aGF0IERNQS1o
ZWFwIGZpcnN0IG5lZWRzIGEgYmV0dGVyIHdheSB0bw0KPiBjb21tdW5pY2F0ZSB0byB1c2Vyc3Bh
Y2Ugd2hpY2ggaGVhcCB0byB1c2UgZm9yIGEgY2VydGFpbiBkZXZpY2UuDQo+IA0KPiBBcyBmYXIg
YXMgSSBrbm93IHVzZXJzcGFjZSBjdXJyZW50bHkganVzdCBoYXJkIGNvZGVzIHRoYXQgaW5mb3Jt
YXRpb24NCj4gd2hpY2ggaXMgY2VydGFpbmx5IG5vdCBkZXNpcmFibGUgY29uc2lkZXJpbmcgdGhh
dCB3ZSBzaG91bGQgaGF2ZSB0aGlzDQo+IGluc2lkZSB0aGUga2VybmVsIGFzIHdlbGwuDQo+IA0K
PiBTbyB3aGF0IHRob3NlIHR3byBwYXRjaGVzIGhlcmUgZG8gaXMgdG8gZmlyc3QgYWRkIHNvbWUN
Cj4gZG1hX2hlYXBfY3JlYXRlX2RldmljZV9saW5rKCkgYW5kICBkbWFfaGVhcF9yZW1vdmVfZGV2
aWNlX2xpbmsoKQ0KPiBmdW5jdGlvbiBhbmQgdGhlbiBkZW1vbnN0cmF0aW5nIHRoZSBmdW5jdGlv
bmFsaXR5IHdpdGggdXZjdmlkZW8NCj4gZHJpdmVyLg0KPiANCj4gVGhlIHByZWZlcnJlZCBETUEt
aGVhcCBpcyByZXByZXNlbnRlZCB3aXRoIGEgc3ltbGluayBpbiBzeXNmcyBiZXR3ZWVuDQo+IHRo
ZSBkZXZpY2UgYW5kIHRoZSB2aXJ0dWFsIERNQS1oZWFwIGRldmljZSBub2RlLg0KDQpJJ2xsIHN0
YXJ0IHdpdGggYSBmZXcgaGlnaC1sZXZlbCBjb21tZW50cy9xdWVzdGlvbnM6DQoNCi0gSW5zdGVh
ZCBvZiB0eWluZyBkcml2ZXJzIHRvIGhlYXBzLCBoYXZlIHlvdSBjb25zaWRlcmVkIGEgc3lzdGVt
IHdoZXJlDQogIGEgZHJpdmVyIHdvdWxkIGV4cG9zZSBjb25zdHJhaW50cywgYW5kIGEgaGVhcCB3
b3VsZCB0aGVuIGJlIHNlbGVjdGVkDQogIGJhc2VkIG9uIHRob3NlIGNvbnN0cmFpbnRzID8gQSB0
aWdodCBjb3VwbGluZyBiZXR3ZWVuIGhlYXBzIGFuZA0KICBkcml2ZXJzIG1lYW5zIGRvd25zdHJl
YW0gcGF0Y2hlcyB0byBkcml2ZXJzIGluIG9yZGVyIHRvIHVzZQ0KICB2ZW5kb3Itc3BlY2lmaWMg
aGVhcHMsIHRoYXQgc291bmRzIHBhaW5mdWwuDQoNCiAgQSBjb25zdHJhaW50LWJhc2VkIHN5c3Rl
bSB3b3VsZCBhbHNvLCBJIHRoaW5rLCBiZSBlYXNpZXIgdG8gZXh0ZW5kDQogIHdpdGggYWRkaXRp
b25hbCBjb25zdHJhaW50cyBpbiB0aGUgZnV0dXJlLg0KDQotIEkgYXNzdW1lIHNvbWUgZHJpdmVy
cyB3aWxsIGJlIGFibGUgdG8gc3VwcG9ydCBtdWx0aXBsZSBoZWFwcy4gSG93IGRvDQogIHlvdSBl
bnZpc2lvbiB0aGlzIGJlaW5nIGltcGxlbWVudGVkID8NCg0KLSBEZXZpY2VzIGNvdWxkIGhhdmUg
ZGlmZmVyZW50IGNvbnN0cmFpbnRzIGJhc2VkIG9uIHBhcnRpY3VsYXINCiAgY29uZmlndXJhdGlv
bnMuIEZvciBpbnN0YW5jZSwgYSBkZXZpY2UgbWF5IHJlcXVpcmUgc3BlY2lmaWMgbWVtb3J5DQog
IGxheW91dCBmb3IgbXVsdGktcGxhbmFyIFlVViBmb3JtYXRzIG9ubHkgKGFzIGluIGFsbG9jYXRp
bmcgdGhlIFkgYW5kIEMNCiAgcGxhbmVzIG9mIE5WMTIgZnJvbSBkaWZmZXJlbnQgbWVtb3J5IGJh
bmtzKS4gQSBkeW5hbWljIEFQSSBtYXkgdGh1cyBiZQ0KICBuZWVkZWQgKGJ1dCBtYXkgYWxzbyBi
ZSB2ZXJ5IHBhaW5mdWwgdG8gdXNlIGZyb20gdXNlcnNwYWNlKS4NCg0KPiBXaGF0J3Mgc3RpbGwg
bWlzc2luZyBpcyBjZXJ0YWlubHkgbWF0Y2hpbmcgdXNlcnNwYWNlIGZvciB0aGlzIHNpbmNlIEkN
Cj4gd2FudGVkIHRvIGRpc2N1c3MgdGhlIGluaXRpYWwga2VybmVsIGFwcHJvYWNoIGZpcnN0Lg0K
DQpodHRwczovL2dpdC5saWJjYW1lcmEub3JnL2xpYmNhbWVyYS9saWJjYW1lcmEuZ2l0LyB3b3Vs
ZCBiZSBhIGdvb2QgcGxhY2UNCnRvIHByb3RvdHlwZSB1c2Vyc3BhY2Ugc3VwcG9ydCA6LSkNCg0K
PiBQbGVhc2UgdGFrZSBhIGxvb2sgYW5kIGNvbW1lbnQuDQo+IA0KPiBUaGFua3MsDQo+IENocmlz
dGlhbi4NCj4gDQo+IFsxXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMTFhNmY5N2MtZTQ1
Zi1mMjRiLThhNzMtNDhkNWEzODhhMmNjQGdtYWlsLmNvbS9ULw0KDQotLSANClJlZ2FyZHMsDQoN
CkxhdXJlbnQgUGluY2hhcnQNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1z
aWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
