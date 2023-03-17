Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B758D6BF252
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Mar 2023 21:21:53 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C91CB3F52A
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Mar 2023 20:21:52 +0000 (UTC)
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com [209.85.210.43])
	by lists.linaro.org (Postfix) with ESMTPS id 61E143EC46
	for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Mar 2023 20:21:33 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=p7JYB8bh;
	spf=pass (lists.linaro.org: domain of alexdeucher@gmail.com designates 209.85.210.43 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ot1-f43.google.com with SMTP id f17-20020a9d7b51000000b00697349ab7e7so3508530oto.9
        for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Mar 2023 13:21:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679084493;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LU/mfsfhNec1aK8PFyfIyYKE8EgQ7PhAvCKKTqQTyQU=;
        b=p7JYB8bhqRMYfjRD2ozKkjzAHTQevhnUGfUTimLWA8bI8MVUYYWpER3Gii4aFi5v29
         Lxwr7+9ZgUmx5eRCE9hnmBerUeOfWr1uzaSC7n0QL9DXgwD+rO90jv40HHNyjhw+Eml1
         UeTFXmSTqEUf5JMMrFF9IJKtQcEMHCKDhyDrBoGdBUGyOn+AQWZqGVSLZeDdr8sDDSZf
         or3jIZBNDQtCgpEdD7UM/NaIP/RaXxBYpfcgkh9XWHWofv7tEC0kFTNYKmxJ4tcY9ZAa
         oMqMQkcWpUrSvABhJRYm3TYVMpJvpiuXnXdwrYJ96N/QrIiB4H09rD3EGyuG0nVL6Ntw
         qygg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679084493;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LU/mfsfhNec1aK8PFyfIyYKE8EgQ7PhAvCKKTqQTyQU=;
        b=alXH1xRF2EhHU00WERupdDo5Hj7pPANXe4EmAjRX/9XCEJJDkfypJ1++/3By+Vy7ee
         CfeQIVJr0Wjdn+VZPFLNKrSgPkEi8598mEaImmAsplENkgPi+UNVvTafMR+BHvHCUN1x
         NBZtTP9wuX8poN7nPytN/MAU8eJWFQFUXTZoSq3tnMue4wtPdhrs39shnD1AVt+6bdF1
         HhqjKu5yKFHa4pT65E4GtU0mMr4eOZmsHq/K/7/WqLPzSO8qEgTKYKIZ80W2Vlv3fCqH
         oagXrQWyidwRMQtRP0Gjaf9Ulrkpsfebiy0J76r4gdisXpx0yZ4QsjxxCWr3P2JfWr5m
         DxCQ==
X-Gm-Message-State: AO0yUKX9HcGi7OS8LwKrpGHf+4SfEEy3aOidsowyKNV7ola9Ark2ogRE
	bt3BZmfCLdrfwyCCHkCQVn33QqxHWa++0mEPoOo=
X-Google-Smtp-Source: AK7set/FRROjLZxfdn/0MtuhT89/CHr/iks4mIHIqASlz97aojJD2I6VOCkrI8hRGKyEKDzR3I6aFHA0/lRhVr+0fyE=
X-Received: by 2002:a9d:75ca:0:b0:698:311c:a051 with SMTP id
 c10-20020a9d75ca000000b00698311ca051mr313259otl.3.1679084492844; Fri, 17 Mar
 2023 13:21:32 -0700 (PDT)
MIME-Version: 1.0
References: <20230317081718.2650744-1-lee@kernel.org> <20230317081718.2650744-15-lee@kernel.org>
In-Reply-To: <20230317081718.2650744-15-lee@kernel.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Fri, 17 Mar 2023 16:21:21 -0400
Message-ID: <CADnq5_PPRv7FHbfqrwivf7SxmQktyOhg2OL8=1Ep9G2CnJwf4A@mail.gmail.com>
To: Lee Jones <lee@kernel.org>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 61E143EC46
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.10 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.210.43:from];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-0.999];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,amd.com,vger.kernel.org,linaro.org,lists.linaro.org,ffwll.ch,gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[12];
	ARC_NA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	URIBL_BLOCKED(0.00)[amd.com:email,ffwll.ch:email,linaro.org:email,lists.freedesktop.org:email,mail-ot1-f43.google.com:rdns,mail-ot1-f43.google.com:helo];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[209.85.210.43:from];
	RCVD_COUNT_TWO(0.00)[2]
Message-ID-Hash: TVOWNMYZKWD5W7J6BNAI2UCC74CHDOHT
X-Message-ID-Hash: TVOWNMYZKWD5W7J6BNAI2UCC74CHDOHT
X-MailFrom: alexdeucher@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, "Pan, Xinhui" <Xinhui.Pan@amd.com>, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, Sumit Semwal <sumit.semwal@linaro.org>, linaro-mm-sig@lists.linaro.org, Daniel Vetter <daniel@ffwll.ch>, Alex Deucher <alexander.deucher@amd.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 14/37] drm/amd/amdgpu/amdgpu_vm_pt: Supply description for amdgpu_vm_pt_free_dfs()'s unlocked param
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TVOWNMYZKWD5W7J6BNAI2UCC74CHDOHT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QXBwbGllZC4gIFRoYW5rcyENCg0KQWxleA0KDQpPbiBGcmksIE1hciAxNywgMjAyMyBhdCA0OjIz
4oCvQU0gTGVlIEpvbmVzIDxsZWVAa2VybmVsLm9yZz4gd3JvdGU6DQo+DQo+IEZpeGVzIHRoZSBm
b2xsb3dpbmcgVz0xIGtlcm5lbCBidWlsZCB3YXJuaW5nKHMpOg0KPg0KPiAgZHJpdmVycy9ncHUv
ZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3ZtX3B0LmM6NjgzOiB3YXJuaW5nOiBGdW5jdGlvbiBwYXJh
bWV0ZXIgb3IgbWVtYmVyICd1bmxvY2tlZCcgbm90IGRlc2NyaWJlZCBpbiAnYW1kZ3B1X3ZtX3B0
X2ZyZWVfZGZzJw0KPg0KPiBDYzogQWxleCBEZXVjaGVyIDxhbGV4YW5kZXIuZGV1Y2hlckBhbWQu
Y29tPg0KPiBDYzogIkNocmlzdGlhbiBLw7ZuaWciIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+
DQo+IENjOiAiUGFuLCBYaW5odWkiIDxYaW5odWkuUGFuQGFtZC5jb20+DQo+IENjOiBEYXZpZCBB
aXJsaWUgPGFpcmxpZWRAZ21haWwuY29tPg0KPiBDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZm
d2xsLmNoPg0KPiBDYzogU3VtaXQgU2Vtd2FsIDxzdW1pdC5zZW13YWxAbGluYXJvLm9yZz4NCj4g
Q2M6IGFtZC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBkcmktZGV2ZWxAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcNCj4gQ2M6
IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZw0KPiBTaWduZWQtb2ZmLWJ5OiBMZWUgSm9u
ZXMgPGxlZUBrZXJuZWwub3JnPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1
L2FtZGdwdV92bV9wdC5jIHwgMSArDQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykN
Cj4NCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV92bV9w
dC5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3ZtX3B0LmMNCj4gaW5kZXgg
MDFlNDJiZGQ4ZTRlOC4uZGY2M2RjM2JjYTE4YyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3ZtX3B0LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2Ft
ZC9hbWRncHUvYW1kZ3B1X3ZtX3B0LmMNCj4gQEAgLTY3Myw2ICs2NzMsNyBAQCB2b2lkIGFtZGdw
dV92bV9wdF9mcmVlX3dvcmsoc3RydWN0IHdvcmtfc3RydWN0ICp3b3JrKQ0KPiAgICogQGFkZXY6
IGFtZGdwdSBkZXZpY2Ugc3RydWN0dXJlDQo+ICAgKiBAdm06IGFtZGdwdSB2bSBzdHJ1Y3R1cmUN
Cj4gICAqIEBzdGFydDogb3B0aW9uYWwgY3Vyc29yIHdoZXJlIHRvIHN0YXJ0IGZyZWVpbmcgUERz
L1BUcw0KPiArICogQHVubG9ja2VkOiB2bSByZXN2IHVubG9jayBzdGF0dXMNCj4gICAqDQo+ICAg
KiBGcmVlIHRoZSBwYWdlIGRpcmVjdG9yeSBvciBwYWdlIHRhYmxlIGxldmVsIGFuZCBhbGwgc3Vi
IGxldmVscy4NCj4gICAqLw0KPiAtLQ0KPiAyLjQwLjAucmMxLjI4NC5nODgyNTRkNTFjNS1nb29n
DQo+DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5h
cm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
VG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3Rz
LmxpbmFyby5vcmcK
