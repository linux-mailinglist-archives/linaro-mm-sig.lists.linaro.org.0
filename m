Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7197876F408
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  3 Aug 2023 22:30:26 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6D2483F955
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  3 Aug 2023 20:30:25 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id D90473F1CC
	for <linaro-mm-sig@lists.linaro.org>; Thu,  3 Aug 2023 20:30:19 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=fqx5arLw;
	spf=pass (lists.linaro.org: domain of sewick@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=sewick@redhat.com;
	dmarc=pass (policy=none) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1691094619;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Z3CFgGOgP9O/o8Jr9VZXMJJ8J/clTiGmzIo1gFvhvOU=;
	b=fqx5arLwJ3waVjvj/mS8nAQ3GV66HEqZSRwsSjuUyzgqwsMDQUdBpOqN3QIQ8ZniaWLcUg
	dMB7l3vEx3b1cqzYHP12EdP/CQ1o7u61cmw/QRb+SNGaqFnA+bp9oKmFfZXqMe7sBsoJXc
	Ndjn/2xhOHAyVAVGPahHe1R6EoH9RFc=
Received: from mail-lj1-f200.google.com (mail-lj1-f200.google.com
 [209.85.208.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-9-N2_DFfIVPK6EpG47Rd483g-1; Thu, 03 Aug 2023 16:30:18 -0400
X-MC-Unique: N2_DFfIVPK6EpG47Rd483g-1
Received: by mail-lj1-f200.google.com with SMTP id 38308e7fff4ca-2b9cd6a555aso13129491fa.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 03 Aug 2023 13:30:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691094617; x=1691699417;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z3CFgGOgP9O/o8Jr9VZXMJJ8J/clTiGmzIo1gFvhvOU=;
        b=l+DCWyAhWo5udYxA83dj9hSn04JzljkqPUI+n3ceGWP9gI/zxNcr14ZBQX0zwDsJVQ
         hroYFKiEMlVCgjGYgWxd3ZjAH+k9fgObsp/PogC/tpF6HtB6k0l0HwAAuGLD6TkoSQKR
         NLX5resaxWA/cRFBWGpvzIGhgV8wF+dFtUKUoHkBgwx+7bQn9X10S6vWWbs490ohhvDE
         hI5itBkEwpfBfYvno+p+py9oNpNEeI0+8MIHvM0Yarlr5jBXVzf4pRHIsloWzxGC8reP
         GwZWKLEtxQ0bDVBzNf0N59TT7MtSS5M90+ZzyOTn+l5xz42ZDmyegAs6+3y3zsP7JU/C
         mDFg==
X-Gm-Message-State: ABy/qLbK+qWiqKlGpVYOxUuMNBTxWb8TiDTJBP5fErelDz9XDfKzc8yH
	F0SFMGrJG2wE/CxITznnTGw8ZCG1b0i3ir2gIiWPTrUnCA+ltBJ/Og7zjgyGN2TEukdxE84cqX+
	yQRUcSX8c4OK2DK3CM9qM1z+ZI4qEwPYHuQbb4DnZaV0=
X-Received: by 2002:a05:651c:201:b0:2b9:ee3e:2412 with SMTP id y1-20020a05651c020100b002b9ee3e2412mr9032196ljn.22.1691094616904;
        Thu, 03 Aug 2023 13:30:16 -0700 (PDT)
X-Google-Smtp-Source: APBJJlFM4juzjmI/t4LIfnWZp4pccCs9/wTL0bDPxsm4o+yqeKOP9b5fXamEn0GjXpG4q5lVC9pLiWFObW4UxjOMP80=
X-Received: by 2002:a05:651c:201:b0:2b9:ee3e:2412 with SMTP id
 y1-20020a05651c020100b002b9ee3e2412mr9032184ljn.22.1691094616597; Thu, 03 Aug
 2023 13:30:16 -0700 (PDT)
MIME-Version: 1.0
References: <20210905122742.86029-1-daniels@collabora.com> <20230803154908.105124-2-daniels@collabora.com>
In-Reply-To: <20230803154908.105124-2-daniels@collabora.com>
From: Sebastian Wick <sebastian.wick@redhat.com>
Date: Thu, 3 Aug 2023 22:30:05 +0200
Message-ID: <CA+hFU4yAb=kx18AQpSLQGV37vTt44rmzt+n5XzPee9uWCEg_fA@mail.gmail.com>
To: Daniel Stone <daniels@collabora.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: D90473F1CC
X-Spamd-Bar: ---------
X-Spamd-Result: default: False [-9.85 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-2.95)[99.78%];
	RCVD_IN_DNSWL_HI(-1.00)[170.10.129.124:from,209.85.208.200:received];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,none];
	FORGED_SENDER(0.30)[sebastian.wick@redhat.com,sewick@redhat.com];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[170.10.129.124:from];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	R_SPF_ALLOW(-0.20)[+ip4:170.10.129.0/24];
	MIME_GOOD(-0.10)[text/plain];
	FROM_NEQ_ENVFROM(0.00)[sebastian.wick@redhat.com,sewick@redhat.com];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:30031, ipnet:170.10.128.0/23, country:US];
	NEURAL_HAM(-0.00)[-0.997];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
Message-ID-Hash: RVR4PJABAIBQRLQQYGSSCFYNNEUVP4AV
X-Message-ID-Hash: RVR4PJABAIBQRLQQYGSSCFYNNEUVP4AV
X-MailFrom: sewick@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 0/2] doc: uapi: Document dma-buf interop design & semantics
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RVR4PJABAIBQRLQQYGSSCFYNNEUVP4AV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Rm9yIHdoYXQgaXQncyB3b3J0aCB0aGlzIHNlcmllcyBpcw0KDQpSZXZpZXdlZC1ieTogU2ViYXN0
aWFuIFdpY2sgPHNlYmFzdGlhbi53aWNrQHJlZGhhdC5jb20+DQoNCk9uIFRodSwgQXVnIDMsIDIw
MjMgYXQgNTo0OeKAr1BNIERhbmllbCBTdG9uZSA8ZGFuaWVsc0Bjb2xsYWJvcmEuY29tPiB3cm90
ZToNCj4NCj4gSGkgYWxsLA0KPiBUaGlzIGlzIHYyIHRvIHRoZSBsaW5rZWQgcGF0Y2ggc2VyaWVz
OyB0aGFua3MgdG8gZXZlcnlvbmUgZm9yIHJldmlld2luZw0KPiB0aGUgaW5pdGlhbCB2ZXJzaW9u
LiBJJ3ZlIG1vdmVkIHRoaXMgb3V0IG9mIGEgcHVyZSBEUk0gc2NvcGUgYW5kIGludG8NCj4gdGhl
IGdlbmVyYWwgdXNlcnNwYWNlLUFQSSBkZXNpZ24gc2VjdGlvbi4gSG9wZWZ1bGx5IGl0IGhlbHBz
IG90aGVycyBhbmQNCj4gYW5zd2VycyBhIGJ1bmNoIG9mIHF1ZXN0aW9ucy4NCj4NCj4gSSB0aGlu
ayBpdCdkIGJlIGdyZWF0IHRvIGhhdmUgaW5wdXQvbGlua3MvcmVmbGVjdGlvbnMgZnJvbSBvdGhl
cg0KPiBzdWJzeXN0ZW1zIGFzIHdlbGwgaGVyZS4NCj4NCj4gQ2hlZXJzLA0KPiBEYW5pZWwNCj4N
Cj4NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
YXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3Jn
ClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0
cy5saW5hcm8ub3JnCg==
