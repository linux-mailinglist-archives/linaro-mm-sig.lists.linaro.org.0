Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 191B355BA28
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Jun 2022 15:54:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 449303EE03
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Jun 2022 13:54:40 +0000 (UTC)
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
	by lists.linaro.org (Postfix) with ESMTPS id 21F643ECC0
	for <linaro-mm-sig@lists.linaro.org>; Mon, 27 Jun 2022 13:54:36 +0000 (UTC)
Received: by mail-qv1-f52.google.com with SMTP id y14so14747288qvs.10
        for <linaro-mm-sig@lists.linaro.org>; Mon, 27 Jun 2022 06:54:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20210112.gappssmtp.com; s=20210112;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :content-transfer-encoding:user-agent:mime-version;
        bh=+rT6LzOd0Ynn4L0BL114LxRE92j4qXXlsy4/5QmiSjk=;
        b=VyTjn5Ro348LXEPtw2w2syMtzdMPEZ6X7C/Fw4X9wyUUT3HPVakiQB8V2V197BUjFp
         PqUnOJH63MHHh5gWdb+uMnVyh8k1yPGBbnBaLlHgBlsFR8BbNniU01pw7FJckXFOf+51
         zJaaiL3NjdTjjTj0GlpzdHcxuGcQt8lvRNWa7dkDDRQGn8cLkOUc3dhyAvJq/foeMak2
         oe297m7nYPA+6+r2EUbtBfLXAhVBj3rLmL2tUc8gsu/fMp6mqbH5oJpcm47Q9+v717Jq
         82/NaHub6V3BEnXN2htMrunDsPSOGd5x+f4/OZ4aSlMRdkAwNzk5K3IJPVcnn5SYvsz8
         1j2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:content-transfer-encoding:user-agent:mime-version;
        bh=+rT6LzOd0Ynn4L0BL114LxRE92j4qXXlsy4/5QmiSjk=;
        b=X9EqsJSuSC2tkEDCgzkLEPR80ezShd7DYqo6ul7XPlabTjIBOwjsvNL4h3xEXBUGUV
         Ow+u1VMQ2WheKSolNhfsQLQbmgo9eF/TIEkcDIDTazSlG5f6dYIV+8JaIlA5rlZENusG
         mOBYiOr2CfEOlaXcaiDsLHVndZ/C7+HTzU9vp6VfJYftiIGpumjuwuI/uixbPvvnuL/p
         4kA71CnYMaOXzcmv54OInJpyIt3PPerI0bbanfyOU7oGDCSWZxSqltjM6dgNbOgkBL/I
         SSOK9c8n1QSqrSK8RqE3cBRh5sANkRe559DhOWs5TU3aq6ftoRcL7SLt3lB7Ir7U5LiG
         6B0w==
X-Gm-Message-State: AJIora9ObnxZQL7clV4oyHJUp3MJpe8aSEE5I7iq6L9xjcfeDGCzt6ZS
	8i8frtYNWiwOxGgZNoRaBoZ1Zg==
X-Google-Smtp-Source: AGRyM1u0PSq5wvrP+0gsBOTu5G7rYKCZmC5okHVqQiWH9j0V5hIV4K4cJ+oQ8PeKxOq7oGdESYJ8CQ==
X-Received: by 2002:a05:622a:1209:b0:305:2d22:3248 with SMTP id y9-20020a05622a120900b003052d223248mr9153550qtx.189.1656338075795;
        Mon, 27 Jun 2022 06:54:35 -0700 (PDT)
Received: from nicolas-tpx395.localdomain (192-222-136-102.qc.cable.ebox.net. [192.222.136.102])
        by smtp.gmail.com with ESMTPSA id t16-20020a37aa10000000b006a760640118sm8624036qke.27.2022.06.27.06.54.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jun 2022 06:54:35 -0700 (PDT)
Message-ID: <0abe475a7b4b04758c03a9d19b228e86d95ac1dd.camel@ndufresne.ca>
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Lucas Stach <l.stach@pengutronix.de>, Christian =?ISO-8859-1?Q?K=F6nig?=
	 <christian.koenig@amd.com>, Pekka Paalanen <ppaalanen@gmail.com>
Date: Mon, 27 Jun 2022 09:54:34 -0400
In-Reply-To: <95cca943bbfda6af07339fb8d2dc7f4da3aa0280.camel@pengutronix.de>
References: <91ff0bbb-ea3a-2663-3453-dea96ccd6dd8@amd.com>
	 <YCuPhOT4GhY3RR/6@phenom.ffwll.local>
	 <9178e19f5c0e141772b61b759abaa0d176f902b6.camel@ndufresne.ca>
	 <CAPj87rPYQNkgVEdHECQcHcYe2nCpgF3RYQKk_=wwhvJSxwHXCg@mail.gmail.com>
	 <c6e65ee1-531e-d72c-a6a6-da7149e34f18@amd.com>
	 <20220623101326.18beeab3@eldfell>
	 <954d0a9b-29ef-52ef-f6ca-22d7e6aa3f4d@amd.com>
	 <4b69f9f542d6efde2190b73c87096e87fa24d8ef.camel@pengutronix.de>
	 <adc626ec-ff5a-5c06-44ce-09111be450cd@amd.com>
	 <fbb228cd78e9bebd7e7921c19e0c4c09d0891f23.camel@pengutronix.de>
	 <e691bccc-171d-f674-2817-13a945970f4a@amd.com>
	 <95cca943bbfda6af07339fb8d2dc7f4da3aa0280.camel@pengutronix.de>
User-Agent: Evolution 3.44.2 (3.44.2-1.fc36) 
MIME-Version: 1.0
Message-ID-Hash: VDWKYJVDXASPKQ4Z5IWDPCJO5GHTG6W3
X-Message-ID-Hash: VDWKYJVDXASPKQ4Z5IWDPCJO5GHTG6W3
X-MailFrom: nicolas@ndufresne.ca
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Sharma, Shashank" <Shashank.Sharma@amd.com>, lkml <linux-kernel@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, linaro-mm-sig@lists.linaro.org, Sumit Semwal <sumit.semwal@linaro.org>, linux-media <linux-media@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: DMA-buf and uncached system memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VDWKYJVDXASPKQ4Z5IWDPCJO5GHTG6W3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TGUgamV1ZGkgMjMganVpbiAyMDIyIMOgIDExOjMzICswMjAwLCBMdWNhcyBTdGFjaCBhIMOpY3Jp
dMKgOg0KPiA+IA0KPiA+IFNlZSBmb3IgZXhhbXBsZSBvbiBBTUQvSW50ZWwgaGFyZHdhcmUgbW9z
dCBvZiB0aGUgZW5naW5lcyBjYW4gcGVyZmVjdGx5IA0KPiA+IGRlYWwgd2l0aCBjYWNoZSBjb2hl
cmVudCBtZW1vcnkgYWNjZXNzZXMuIE9ubHkgdGhlIGRpc3BsYXkgZW5naW5lcyBjYW4ndC4NCj4g
PiANCj4gPiBTbyBvbiBpbXBvcnQgdGltZSB3ZSBjYW4ndCBldmVuIHNheSBpZiB0aGUgYWNjZXNz
IGNhbiBiZSBjb2hlcmVudCBhbmQgDQo+ID4gc25vb3AgdGhlIENQVSBjYWNoZSBvciBub3QgYmVj
YXVzZSB3ZSBkb24ndCBrbm93IGhvdyB0aGUgaW1wb3J0ZWQgDQo+ID4gRE1BLWJ1ZiB3aWxsIGJl
IHVzZWQgbGF0ZXIgb24uDQo+ID4gDQo+IFNvIGZvciB0aG9zZSBtaXhlZCB1c2UgY2FzZXMsIHdv
dWxkbid0IGl0IGhlbHAgdG8gaGF2ZSBzb21ldGhpbmcNCj4gc2ltaWxhciB0byB0aGUgZG1hX3N5
bmMgaW4gdGhlIERNQS1idWYgQVBJLCBzbyB5b3VyIHNjYW5vdXQgdXNhZ2UgY2FuDQo+IHRlbGwg
dGhlIGV4cG9ydGVyIHRoYXQgaXQncyBnb2luZyB0byBkbyBub24tc25vb3AgYWNjZXNzIGFuZCBh
bnkgZGlydHkNCj4gY2FjaGUgbGluZXMgbXVzdCBiZSBjbGVhbmVkPyBTaWduYWxpbmcgdGhpcyB0
byB0aGUgZXhwb3J0ZXIgd291bGQgYWxsb3cNCj4gdG8gc2tpcCB0aGUgY2FjaGUgbWFpbnRlbmFu
Y2UgaWYgdGhlIGJ1ZmZlciBpcyBpbiBDUFUgdW5jYWNoZWQgbWVtb3J5LA0KPiB3aGljaCBhZ2Fp
biBpcyBhIGRlZmF1bHQgY2FzZSBmb3IgdGhlIEFSTSBTb0Mgd29ybGQuDQoNClRlbGxpbmcgdGhl
IGV4cG9ydGVyIGZvciBldmVyeSBzY2FuIGlzIHVubmVlZGVkIG92ZXJoZWFkLiBJZiB0aGF0IGlu
Zm9ybWF0aW9uIGlzDQptYWRlIGF2YWlsYWJsZSAicHJvcGVybHkiLCB0aGVuIHRyYWNraW5nIGl0
IGluIGF0dGFjaC9kZXRhY2ggaXMgc3VmZmljaWVudCBhbmQNCmxpZ2h0d2VpZ2h0Lg0KDQpOaWNv
bGFzDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9y
ZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlz
dHMubGluYXJvLm9yZwo=
