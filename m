Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 83D036A5E3F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Feb 2023 18:33:02 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4DD3344239
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Feb 2023 17:33:01 +0000 (UTC)
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com [209.85.167.169])
	by lists.linaro.org (Postfix) with ESMTPS id 348FB3F1F4
	for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Feb 2023 17:32:42 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=Nk5WmDPH;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.167.169 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-oi1-f169.google.com with SMTP id bp19so5895639oib.4
        for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Feb 2023 09:32:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OS2xX+BtHdXwUDSZ5DQ0d8jK5T/XMeJmBIJDyEZsagY=;
        b=Nk5WmDPHrcSVCD7pd3bZdYSqH3SpwxNlDXtzxaRNnhlyNLqKXPSct1od4XkzI40QiQ
         z7EB7N5I5P5bQqUFd3+D9kddSyWv+K4d/FLj7tdhruhZfKeCm1tPz8SuHU7MIeEpP4nR
         CEcd0Gn6snBz9w+NqiM6PXs46XEfwxvCXEawKfwVjXX2WW4Of4tGiBKPoxjnhR+3c9bq
         2jG3Z/OCsq5/36H9wJsXaNo9SbWiBYkUi1nTFba1lFMx+JmIoNPwds9Bk3IOepBCJf82
         4PDgVRCudfjWL3UXzSRym3O+ly+A2gdLEvj91BXpZZzOD2dCRiStd0wwRoWUtvyJBllc
         oVoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OS2xX+BtHdXwUDSZ5DQ0d8jK5T/XMeJmBIJDyEZsagY=;
        b=73BsUxwTkZhwNT4u8VesW/mtvELQMCOsv4UFXuZaLM6Ej3cqMGc87wp11hah4RzJXx
         hari3vVI+mgob6jbbIJB5vfZ2P0t8Lh38fJfKqS3Lb8gnbJwDJuYDiHozLTG7glbYVfb
         3G64vH3jlUwh+T/GWKfNFoNrHmeJhwGqOL6d728FQfNeM6lPNvLsKFTvFUWTpJ7LxOYg
         Wk4wv7Q8eanM+W/1HpyZD0pWzEcGf/ikPAvWGEhEBcZaJVegdVe6i3eGEkdOfx/A+Utq
         ytn8T7ut9HdMUiW0CRKZ1Yk//4F9g5qa/lakcxdkWpTwZb9H+z7mLDf5hGlOyvtakcNU
         fVow==
X-Gm-Message-State: AO0yUKWEpZ9RVxGNvww/TcowbNSSTAOEF+ICg3VMCjbNl9t2R9pGTso4
	R/iqrdlpYIBCOLFkLIOVY0mahiVtc56kF5SxzMc=
X-Google-Smtp-Source: AK7set9wDysrTDCY5oqefgdcjHb48vnAXtnE6xR8/CSF6XoQkO4OKA20wINQBgGtH/zvjgvAgUaBg0YapluvX8WDLFU=
X-Received: by 2002:a05:6808:278c:b0:384:23ed:1ff6 with SMTP id
 es12-20020a056808278c00b0038423ed1ff6mr1079335oib.3.1677605561422; Tue, 28
 Feb 2023 09:32:41 -0800 (PST)
MIME-Version: 1.0
References: <20230227193535.2822389-1-robdclark@gmail.com> <20230227193535.2822389-2-robdclark@gmail.com>
 <20230228112154.207dc66c@eldfell>
In-Reply-To: <20230228112154.207dc66c@eldfell>
From: Rob Clark <robdclark@gmail.com>
Date: Tue, 28 Feb 2023 09:32:30 -0800
Message-ID: <CAF6AEGu3eCqK3ooWrArF9XS06Ad9cFjQn=kvwCVoioRjYJ9NmQ@mail.gmail.com>
To: Pekka Paalanen <ppaalanen@gmail.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 348FB3F1F4
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail-oi1-f169.google.com:rdns,mail-oi1-f169.google.com:helo,amd.com:email,chromium.org:email,collabora.com:email];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,ffwll.ch,gmail.com,daenzer.net,intel.com,amd.com,emersion.fr,chromium.org,linaro.org,lwn.net,padovan.org,vger.kernel.org,lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.169:from];
	NEURAL_HAM(-0.00)[-1.000];
	URIBL_BLOCKED(0.00)[amd.com:email,chromium.org:email];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_TWO(0.00)[2];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[]
Message-ID-Hash: VPPG2OBN4DJ55AJQLVOA3RP4V4ZRC6MY
X-Message-ID-Hash: VPPG2OBN4DJ55AJQLVOA3RP4V4ZRC6MY
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel@daenzer.net>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Alex Deucher <alexander.deucher@amd.com>, Simon Ser <contact@emersion.fr>, Luben Tuikov <luben.tuikov@amd.com>, Rob Clark <robdclark@chromium.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, Jonathan Corbet <corbet@lwn.net>, Gustavo Padovan <gustavo@padovan.org>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v7 01/15] dma-buf/dma-fence: Add deadline awareness
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VPPG2OBN4DJ55AJQLVOA3RP4V4ZRC6MY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBGZWIgMjgsIDIwMjMgYXQgMToyMSBBTSBQZWtrYSBQYWFsYW5lbiA8cHBhYWxhbmVu
QGdtYWlsLmNvbT4gd3JvdGU6DQo+DQo+IE9uIE1vbiwgMjcgRmViIDIwMjMgMTE6MzU6MDcgLTA4
MDANCj4gUm9iIENsYXJrIDxyb2JkY2xhcmtAZ21haWwuY29tPiB3cm90ZToNCj4NCj4gPiBGcm9t
OiBSb2IgQ2xhcmsgPHJvYmRjbGFya0BjaHJvbWl1bS5vcmc+DQo+ID4NCj4gPiBBZGQgYSB3YXkg
dG8gaGludCB0byB0aGUgZmVuY2Ugc2lnbmFsZXIgb2YgYW4gdXBjb21pbmcgZGVhZGxpbmUsIHN1
Y2ggYXMNCj4gPiB2YmxhbmssIHdoaWNoIHRoZSBmZW5jZSB3YWl0ZXIgd291bGQgcHJlZmVyIG5v
dCB0byBtaXNzLiAgVGhpcyBpcyB0byBhaWQNCj4gPiB0aGUgZmVuY2Ugc2lnbmFsZXIgaW4gbWFr
aW5nIHBvd2VyIG1hbmFnZW1lbnQgZGVjaXNpb25zLCBsaWtlIGJvb3N0aW5nDQo+ID4gZnJlcXVl
bmN5IGFzIHRoZSBkZWFkbGluZSBhcHByb2FjaGVzIGFuZCBhd2FyZW5lc3Mgb2YgbWlzc2luZyBk
ZWFkbGluZXMNCj4gPiBzbyB0aGF0IGNhbiBiZSBmYWN0b3JlZCBpbiB0byB0aGUgZnJlcXVlbmN5
IHNjYWxpbmcuDQo+ID4NCj4gPiB2MjogRHJvcCBkbWFfZmVuY2U6OmRlYWRsaW5lIGFuZCByZWxh
dGVkIGxvZ2ljIHRvIGZpbHRlciBkdXBsaWNhdGUNCj4gPiAgICAgZGVhZGxpbmVzLCB0byBhdm9p
ZCBpbmNyZWFzaW5nIGRtYV9mZW5jZSBzaXplLiAgVGhlIGZlbmNlLWNvbnRleHQNCj4gPiAgICAg
aW1wbGVtZW50YXRpb24gd2lsbCBuZWVkIHNpbWlsYXIgbG9naWMgdG8gdHJhY2sgZGVhZGxpbmVz
IG9mIGFsbA0KPiA+ICAgICB0aGUgZmVuY2VzIG9uIHRoZSBzYW1lIHRpbWVsaW5lLiAgW2Nrb2Vu
aWddDQo+ID4gdjM6IENsYXJpZnkgbG9ja2luZyB3cnQuIHNldF9kZWFkbGluZSBjYWxsYmFjaw0K
PiA+IHY0OiBDbGFyaWZ5IGluIGRvY3MgY29tbWVudCB0aGF0IHRoaXMgaXMgYSBoaW50DQo+ID4g
djU6IERyb3AgRE1BX0ZFTkNFX0ZMQUdfSEFTX0RFQURMSU5FX0JJVC4NCj4gPiB2NjogTW9yZSBk
b2NzDQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBSb2IgQ2xhcmsgPHJvYmRjbGFya0BjaHJvbWl1
bS5vcmc+DQo+ID4gUmV2aWV3ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2Vu
aWdAYW1kLmNvbT4NCj4gPiAtLS0NCj4gPiAgRG9jdW1lbnRhdGlvbi9kcml2ZXItYXBpL2RtYS1i
dWYucnN0IHwgIDYgKysrDQo+ID4gIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYyAgICAgICAg
ICB8IDU5ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysNCj4gPiAgaW5jbHVkZS9saW51eC9k
bWEtZmVuY2UuaCAgICAgICAgICAgIHwgMjAgKysrKysrKysrKw0KPiA+ICAzIGZpbGVzIGNoYW5n
ZWQsIDg1IGluc2VydGlvbnMoKykNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9u
L2RyaXZlci1hcGkvZG1hLWJ1Zi5yc3QgYi9Eb2N1bWVudGF0aW9uL2RyaXZlci1hcGkvZG1hLWJ1
Zi5yc3QNCj4gPiBpbmRleCA2MjJiODE1NmQyMTIuLjE4M2U0ODBkOGNlYSAxMDA2NDQNCj4gPiAt
LS0gYS9Eb2N1bWVudGF0aW9uL2RyaXZlci1hcGkvZG1hLWJ1Zi5yc3QNCj4gPiArKysgYi9Eb2N1
bWVudGF0aW9uL2RyaXZlci1hcGkvZG1hLWJ1Zi5yc3QNCj4gPiBAQCAtMTY0LDYgKzE2NCwxMiBA
QCBETUEgRmVuY2UgU2lnbmFsbGluZyBBbm5vdGF0aW9ucw0KPiA+ICAuLiBrZXJuZWwtZG9jOjog
ZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQo+ID4gICAgIDpkb2M6IGZlbmNlIHNpZ25hbGxp
bmcgYW5ub3RhdGlvbg0KPiA+DQo+ID4gK0RNQSBGZW5jZSBEZWFkbGluZSBIaW50cw0KPiA+ICt+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4NCj4gPiArDQo+ID4gKy4uIGtlcm5lbC1kb2M6OiBkcml2
ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMNCj4gPiArICAgOmRvYzogZGVhZGxpbmUgaGludHMNCj4g
PiArDQo+ID4gIERNQSBGZW5jZXMgRnVuY3Rpb25zIFJlZmVyZW5jZQ0KPiA+ICB+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+fn4NCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1i
dWYvZG1hLWZlbmNlLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMNCj4gPiBpbmRleCAw
ZGUwNDgyY2QzNmUuLmUxMDNlODIxZDk5MyAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2RtYS1i
dWYvZG1hLWZlbmNlLmMNCj4gPiArKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMNCj4g
PiBAQCAtOTEyLDYgKzkxMiw2NSBAQCBkbWFfZmVuY2Vfd2FpdF9hbnlfdGltZW91dChzdHJ1Y3Qg
ZG1hX2ZlbmNlICoqZmVuY2VzLCB1aW50MzJfdCBjb3VudCwNCj4gPiAgfQ0KPiA+ICBFWFBPUlRf
U1lNQk9MKGRtYV9mZW5jZV93YWl0X2FueV90aW1lb3V0KTsNCj4gPg0KPiA+ICsvKioNCj4gPiAr
ICogRE9DOiBkZWFkbGluZSBoaW50cw0KPiA+ICsgKg0KPiA+ICsgKiBJbiBhbiBpZGVhbCB3b3Js
ZCwgaXQgd291bGQgYmUgcG9zc2libGUgdG8gcGlwZWxpbmUgYSB3b3JrbG9hZCBzdWZmaWNpZW50
bHkNCj4gPiArICogdGhhdCBhIHV0aWxpemF0aW9uIGJhc2VkIGRldmljZSBmcmVxdWVuY3kgZ292
ZXJub3IgY291bGQgYXJyaXZlIGF0IGEgbWluaW11bQ0KPiA+ICsgKiBmcmVxdWVuY3kgdGhhdCBt
ZWV0cyB0aGUgcmVxdWlyZW1lbnRzIG9mIHRoZSB1c2UtY2FzZSwgaW4gb3JkZXIgdG8gbWluaW1p
emUNCj4gPiArICogcG93ZXIgY29uc3VtcHRpb24uICBCdXQgaW4gdGhlIHJlYWwgd29ybGQgdGhl
cmUgYXJlIG1hbnkgd29ya2xvYWRzIHdoaWNoDQo+ID4gKyAqIGRlZnkgdGhpcyBpZGVhbC4gIEZv
ciBleGFtcGxlLCBidXQgbm90IGxpbWl0ZWQgdG86DQo+ID4gKyAqDQo+ID4gKyAqICogV29ya2xv
YWRzIHRoYXQgcGluZy1wb25nIGJldHdlZW4gZGV2aWNlIGFuZCBDUFUsIHdpdGggYWx0ZXJuYXRp
bmcgcGVyaW9kcw0KPiA+ICsgKiAgIG9mIENQVSB3YWl0aW5nIGZvciBkZXZpY2UsIGFuZCBkZXZp
Y2Ugd2FpdGluZyBvbiBDUFUuICBUaGlzIGNhbiByZXN1bHQgaW4NCj4gPiArICogICBkZXZmcmVx
IGFuZCBjcHVmcmVxIHNlZWluZyBpZGxlIHRpbWUgaW4gdGhlaXIgcmVzcGVjdGl2ZSBkb21haW5z
IGFuZCBpbg0KPiA+ICsgKiAgIHJlc3VsdCByZWR1Y2UgZnJlcXVlbmN5Lg0KPiA+ICsgKg0KPiA+
ICsgKiAqIFdvcmtsb2FkcyB0aGF0IGludGVyYWN0IHdpdGggYSBwZXJpb2RpYyB0aW1lIGJhc2Vk
IGRlYWRsaW5lLCBzdWNoIGFzIGRvdWJsZQ0KPiA+ICsgKiAgIGJ1ZmZlcmVkIEdQVSByZW5kZXJp
bmcgdnMgdmJsYW5rIHN5bmMnZCBwYWdlIGZsaXBwaW5nLiAgSW4gdGhpcyBzY2VuYXJpbywNCj4g
PiArICogICBtaXNzaW5nIGEgdmJsYW5rIGRlYWRsaW5lIHJlc3VsdHMgaW4gYW4gKmluY3JlYXNl
KiBpbiBpZGxlIHRpbWUgb24gdGhlIEdQVQ0KPiA+ICsgKiAgIChzaW5jZSBpdCBoYXMgdG8gd2Fp
dCBhbiBhZGRpdGlvbmFsIHZibGFuayBwZXJpb2QpLCBzZW5kaW5nIGEgc2luZ2xlIHRvDQo+DQo+
IEhpIFJvYiwNCj4NCj4gcy9zaW5nbGUvc2lnbmFsLyA/DQoNCm9vcHMsIHllcw0KDQo+ID4gKyAq
ICAgdGhlIEdQVSdzIGRldmZyZXEgdG8gcmVkdWNlIGZyZXF1ZW5jeSwgd2hlbiBpbiBmYWN0IHRo
ZSBvcHBvc2l0ZSBpcyB3aGF0IGlzDQo+ID4gKyAqICAgbmVlZGVkLg0KPiA+ICsgKg0KPiA+ICsg
KiBUbyB0aGlzIGVuZCwgZGVhZGxpbmUgaGludChzKSBjYW4gYmUgc2V0IG9uIGEgJmRtYV9mZW5j
ZSB2aWEgJmRtYV9mZW5jZV9zZXRfZGVhZGxpbmUuDQo+ID4gKyAqIFRoZSBkZWFkbGluZSBoaW50
IHByb3ZpZGVzIGEgd2F5IGZvciB0aGUgd2FpdGluZyBkcml2ZXIsIG9yIHVzZXJzcGFjZSwgdG8N
Cj4gPiArICogY29udmV5IGFuIGFwcHJvcHJpYXRlIHNlbnNlIG9mIHVyZ2VuY3kgdG8gdGhlIHNp
Z25hbGluZyBkcml2ZXIuDQo+ID4gKyAqDQo+ID4gKyAqIEEgZGVhZGxpbmUgaGludCBpcyBnaXZl
biBpbiBhYnNvbHV0ZSBrdGltZSAoQ0xPQ0tfTU9OT1RPTklDIGZvciB1c2Vyc3BhY2UNCj4gPiAr
ICogZmFjaW5nIEFQSXMpLiAgVGhlIHRpbWUgY291bGQgZWl0aGVyIGJlIHNvbWUgcG9pbnQgaW4g
dGhlIGZ1dHVyZSAoc3VjaCBhcw0KPiA+ICsgKiB0aGUgdmJsYW5rIGJhc2VkIGRlYWRsaW5lIGZv
ciBwYWdlLWZsaXBwaW5nLCBvciB0aGUgc3RhcnQgb2YgYSBjb21wb3NpdG9yJ3MNCj4gPiArICog
Y29tcG9zaXRpb24gY3ljbGUpLCBvciB0aGUgY3VycmVudCB0aW1lIHRvIGluZGljYXRlIGFuIGlt
bWVkaWF0ZSBkZWFkbGluZQ0KPiA+ICsgKiBoaW50IChJZS4gZm9yd2FyZCBwcm9ncmVzcyBjYW5u
b3QgYmUgbWFkZSB1bnRpbCB0aGlzIGZlbmNlIGlzIHNpZ25hbGVkKS4NCj4NCj4gQXMgImN1cnJl
bnQgdGltZSIgbm90IGEgc3BlY2lhbCB2YWx1ZSwgYnV0IGp1c3QgYW4gYWJzb2x1dGUgdGltZXN0
YW1wDQo+IGxpa2UgYW55IG90aGVyLCBkZWFkbGluZXMgYWxyZWFkeSBpbiB0aGUgcGFzdCBtdXN0
IGFsc28gYmUgYWNjZXB0ZWQ/DQoNClllcywgd2VsbCAiY3VycmVudCB0aW1lIiBpcyBhbHJlYWR5
IGluIHRoZSBwYXN0IGFmdGVyIHRoZSBuZXh0IGNsb2NrDQp0aWNrLCBzbyBkZWFkbGluZXMgYWxy
ZWFkeSBwYXNzZWQgc2hvdWxkIGJlIGFjY2VwdGVkLiAgSSd2ZSBiZWVuDQp0cnlpbmcgdG8gYXZv
aWQgYWR2b2NhdGluZyB6ZXJvIGFzIGEgc3BlY2lhbCB2YWx1ZSwgYnV0IEkgZ3Vlc3MNCnJlYWxp
c3RpY2FsbHkgd2UgZG9uJ3QgaGF2ZSBhIHJvbGxvdmVyIHByb2JsZW0gZm9yIGEgY291cGxlIGh1
bmRyZWQNCnllYXJzLiAgSW4gYW55IGNhc2UsIEkgdGhpbmsgYGRlYWRsaW5lIDwgbm93YCBzaG91
bGQgYmUgYWxsb3dlZCAoaWUuDQp3aGF0IGlmIHlvdSB3ZXJlIHByZWVtcHRlZCBpbiB0aGUgcHJv
Y2VzcyBvZiBzZXR0aW5nIGEgZGVhZGxpbmUsIGV0YykNCg0KSSdsbCB0cnkgdG8gY2xhcmlmeSB0
aGlzIGluIHRoZSBuZXh0IHZlcnNpb24uDQoNCkJSLA0KLVINCg0KPiA+ICsgKg0KPiA+ICsgKiBN
dWx0aXBsZSBkZWFkbGluZXMgbWF5IGJlIHNldCBvbiBhIGdpdmVuIGZlbmNlLCBldmVuIGluIHBh
cmFsbGVsLiAgU2VlIHRoZQ0KPiA+ICsgKiBkb2N1bWVudGF0aW9uIGZvciAmZG1hX2ZlbmNlX29w
cy5zZXRfZGVhZGxpbmUuDQo+ID4gKyAqDQo+ID4gKyAqIFRoZSBkZWFkbGluZSBoaW50IGlzIGp1
c3QgdGhhdCwgYSBoaW50LiAgVGhlIGRyaXZlciB0aGF0IGNyZWF0ZWQgdGhlIGZlbmNlDQo+ID4g
KyAqIG1heSByZWFjdCBieSBpbmNyZWFzaW5nIGZyZXF1ZW5jeSwgbWFraW5nIGRpZmZlcmVudCBz
Y2hlZHVsaW5nIGNob2ljZXMsIGV0Yy4NCj4gPiArICogT3IgZG9pbmcgbm90aGluZyBhdCBhbGwu
DQo+ID4gKyAqLw0KPg0KPiBZZXMhIFRoYW5rIHlvdSBmb3Igd3JpdGluZyB0aGlzISBXZWxsIGV4
cGxhaW5lZC4NCj4NCj4gPiArDQo+ID4gKy8qKg0KPiA+ICsgKiBkbWFfZmVuY2Vfc2V0X2RlYWRs
aW5lIC0gc2V0IGRlc2lyZWQgZmVuY2Utd2FpdCBkZWFkbGluZSBoaW50DQo+ID4gKyAqIEBmZW5j
ZTogICAgdGhlIGZlbmNlIHRoYXQgaXMgdG8gYmUgd2FpdGVkIG9uDQo+ID4gKyAqIEBkZWFkbGlu
ZTogdGhlIHRpbWUgYnkgd2hpY2ggdGhlIHdhaXRlciBob3BlcyBmb3IgdGhlIGZlbmNlIHRvIGJl
DQo+ID4gKyAqICAgICAgICAgICAgc2lnbmFsZWQNCj4gPiArICoNCj4gPiArICogR2l2ZSB0aGUg
ZmVuY2Ugc2lnbmFsZXIgYSBoaW50IGFib3V0IGFuIHVwY29taW5nIGRlYWRsaW5lLCBzdWNoIGFz
DQo+ID4gKyAqIHZibGFuaywgYnkgd2hpY2ggcG9pbnQgdGhlIHdhaXRlciB3b3VsZCBwcmVmZXIg
dGhlIGZlbmNlIHRvIGJlDQo+ID4gKyAqIHNpZ25hbGVkIGJ5LiAgVGhpcyBpcyBpbnRlbmRlZCB0
byBnaXZlIGZlZWRiYWNrIHRvIHRoZSBmZW5jZSBzaWduYWxlcg0KPiA+ICsgKiB0byBhaWQgaW4g
cG93ZXIgbWFuYWdlbWVudCBkZWNpc2lvbnMsIHN1Y2ggYXMgYm9vc3RpbmcgR1BVIGZyZXF1ZW5j
eQ0KPiA+ICsgKiBpZiBhIHBlcmlvZGljIHZibGFuayBkZWFkbGluZSBpcyBhcHByb2FjaGluZyBi
dXQgdGhlIGZlbmNlIGlzIG5vdA0KPiA+ICsgKiB5ZXQgc2lnbmFsZWQuLg0KPiA+ICsgKi8NCj4g
PiArdm9pZCBkbWFfZmVuY2Vfc2V0X2RlYWRsaW5lKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLCBr
dGltZV90IGRlYWRsaW5lKQ0KPiA+ICt7DQo+ID4gKyAgICAgaWYgKGZlbmNlLT5vcHMtPnNldF9k
ZWFkbGluZSAmJiAhZG1hX2ZlbmNlX2lzX3NpZ25hbGVkKGZlbmNlKSkNCj4gPiArICAgICAgICAg
ICAgIGZlbmNlLT5vcHMtPnNldF9kZWFkbGluZShmZW5jZSwgZGVhZGxpbmUpOw0KPiA+ICt9DQo+
ID4gK0VYUE9SVF9TWU1CT0woZG1hX2ZlbmNlX3NldF9kZWFkbGluZSk7DQo+ID4gKw0KPiA+ICAv
KioNCj4gPiAgICogZG1hX2ZlbmNlX2Rlc2NyaWJlIC0gRHVtcCBmZW5jZSBkZXNjcmlidGlvbiBp
bnRvIHNlcV9maWxlDQo+ID4gICAqIEBmZW5jZTogdGhlIDZmZW5jZSB0byBkZXNjcmliZQ0KPiA+
IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oIGIvaW5jbHVkZS9saW51eC9k
bWEtZmVuY2UuaA0KPiA+IGluZGV4IDc3NWNkYzBiNGYyNC4uODdjMGQ4NDZkYmI0IDEwMDY0NA0K
PiA+IC0tLSBhL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmgNCj4gPiArKysgYi9pbmNsdWRlL2xp
bnV4L2RtYS1mZW5jZS5oDQo+ID4gQEAgLTI1Nyw2ICsyNTcsMjQgQEAgc3RydWN0IGRtYV9mZW5j
ZV9vcHMgew0KPiA+ICAgICAgICAqLw0KPiA+ICAgICAgIHZvaWQgKCp0aW1lbGluZV92YWx1ZV9z
dHIpKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLA0KPiA+ICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIGNoYXIgKnN0ciwgaW50IHNpemUpOw0KPiA+ICsNCj4gPiArICAgICAvKioNCj4g
PiArICAgICAgKiBAc2V0X2RlYWRsaW5lOg0KPiA+ICsgICAgICAqDQo+ID4gKyAgICAgICogQ2Fs
bGJhY2sgdG8gYWxsb3cgYSBmZW5jZSB3YWl0ZXIgdG8gaW5mb3JtIHRoZSBmZW5jZSBzaWduYWxl
ciBvZg0KPiA+ICsgICAgICAqIGFuIHVwY29taW5nIGRlYWRsaW5lLCBzdWNoIGFzIHZibGFuaywg
Ynkgd2hpY2ggcG9pbnQgdGhlIHdhaXRlcg0KPiA+ICsgICAgICAqIHdvdWxkIHByZWZlciB0aGUg
ZmVuY2UgdG8gYmUgc2lnbmFsZWQgYnkuICBUaGlzIGlzIGludGVuZGVkIHRvDQo+ID4gKyAgICAg
ICogZ2l2ZSBmZWVkYmFjayB0byB0aGUgZmVuY2Ugc2lnbmFsZXIgdG8gYWlkIGluIHBvd2VyIG1h
bmFnZW1lbnQNCj4gPiArICAgICAgKiBkZWNpc2lvbnMsIHN1Y2ggYXMgYm9vc3RpbmcgR1BVIGZy
ZXF1ZW5jeS4NCj4gPiArICAgICAgKg0KPiA+ICsgICAgICAqIFRoaXMgaXMgY2FsbGVkIHdpdGhv
dXQgJmRtYV9mZW5jZS5sb2NrIGhlbGQsIGl0IGNhbiBiZSBjYWxsZWQNCj4gPiArICAgICAgKiBt
dWx0aXBsZSB0aW1lcyBhbmQgZnJvbSBhbnkgY29udGV4dC4gIExvY2tpbmcgaXMgdXAgdG8gdGhl
IGNhbGxlZQ0KPiA+ICsgICAgICAqIGlmIGl0IGhhcyBzb21lIHN0YXRlIHRvIG1hbmFnZS4gIElm
IG11bHRpcGxlIGRlYWRsaW5lcyBhcmUgc2V0LA0KPiA+ICsgICAgICAqIHRoZSBleHBlY3RhdGlv
biBpcyB0byB0cmFjayB0aGUgc29vbmVzdCBvbmUuDQo+ID4gKyAgICAgICoNCj4gPiArICAgICAg
KiBUaGlzIGNhbGxiYWNrIGlzIG9wdGlvbmFsLg0KPiA+ICsgICAgICAqLw0KPiA+ICsgICAgIHZv
aWQgKCpzZXRfZGVhZGxpbmUpKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLCBrdGltZV90IGRlYWRs
aW5lKTsNCj4gPiAgfTsNCj4gPg0KPiA+ICB2b2lkIGRtYV9mZW5jZV9pbml0KHN0cnVjdCBkbWFf
ZmVuY2UgKmZlbmNlLCBjb25zdCBzdHJ1Y3QgZG1hX2ZlbmNlX29wcyAqb3BzLA0KPiA+IEBAIC01
ODMsNiArNjAxLDggQEAgc3RhdGljIGlubGluZSBzaWduZWQgbG9uZyBkbWFfZmVuY2Vfd2FpdChz
dHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwgYm9vbCBpbnRyKQ0KPiA+ICAgICAgIHJldHVybiByZXQg
PCAwID8gcmV0IDogMDsNCj4gPiAgfQ0KPiA+DQo+ID4gK3ZvaWQgZG1hX2ZlbmNlX3NldF9kZWFk
bGluZShzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwga3RpbWVfdCBkZWFkbGluZSk7DQo+ID4gKw0K
PiA+ICBzdHJ1Y3QgZG1hX2ZlbmNlICpkbWFfZmVuY2VfZ2V0X3N0dWIodm9pZCk7DQo+ID4gIHN0
cnVjdCBkbWFfZmVuY2UgKmRtYV9mZW5jZV9hbGxvY2F0ZV9wcml2YXRlX3N0dWIodm9pZCk7DQo+
ID4gIHU2NCBkbWFfZmVuY2VfY29udGV4dF9hbGxvYyh1bnNpZ25lZCBudW0pOw0KPg0KPiBUaGlz
IGlzIGV4YWN0bHkgd2hhdCBJIHdhbnRlZCB0byBzZWUuIEFscmVhZHkNCj4gQWNrZWQtYnk6IFBl
a2thIFBhYWxhbmVuIDxwZWtrYS5wYWFsYW5lbkBjb2xsYWJvcmEuY29tPg0KPg0KPg0KPiBUaGFu
a3MsDQo+IHBxDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFy
by5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZl
QGxpc3RzLmxpbmFyby5vcmcK
