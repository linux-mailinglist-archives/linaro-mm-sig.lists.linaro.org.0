Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E89D36BF26F
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Mar 2023 21:28:09 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EF4683F52C
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Mar 2023 20:28:08 +0000 (UTC)
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com [209.85.167.180])
	by lists.linaro.org (Postfix) with ESMTPS id 162923F4A0
	for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Mar 2023 20:27:50 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=e5hycfXZ;
	spf=pass (lists.linaro.org: domain of alexdeucher@gmail.com designates 209.85.167.180 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-oi1-f180.google.com with SMTP id r36so4689343oiw.7
        for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Mar 2023 13:27:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679084869;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ba1T52G1S948o7T3Sv1JQdxUM0FGCuF6VR8R5Mn80os=;
        b=e5hycfXZJoahdd+EK2xsTNQpEheR1OaVRQ2wD6fTlb/tYwRqaK5PjxVNd2daMEJkIO
         BoXetfGiJLB6y6/krTD6mAKCvtObcv7WfzAO2r5K9a6JMbXjD0sT/vIhM0Y7a++WzQMo
         93o0pzgjrW+ffCHTUUclRJNrW9dkwSfOYuDEzAhTTwREnGRMLKuizTANO/1k7CGf4WBm
         kMbD/KtlI9cj7a7TQeD9D9Bh5nz/X4sso6fprKCGWUMeQlG3YG3hP29q4vjl3pR90q/7
         9NM4S0cDnoJFrTmloDK6+hj7tDvQ/UC9LmKLZRmK1n8LLEMy+Sop3ue/W+7Tln+2u1JT
         TPag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679084869;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ba1T52G1S948o7T3Sv1JQdxUM0FGCuF6VR8R5Mn80os=;
        b=YFYw68+jxa8/aQ8pWepDE6FjVdkjJ0UuJPLdP975zg/Uo2DiFGUqV8d0JMNyevjIBJ
         tlsWo8XAyk44Fl7FaZZkMO7YnAfJFY0byoy8/kksAfQBAzf4MJBrNoMsm+pxZ/DdZXw8
         XQGgJNXwrg1l17WPwEqmj2vgP7d4HHE+ePKjWkAaQwCaGxWVsZqK/3n975ce67bgqp7L
         nnCNbtMOs0zx5+JJ9CaLqjrRD6KfQDrdRw1eGJuBD6ILLQIMI2x71p/HC7ZMVnUekBh0
         jC9o4O1ZOKSgLsQmRbqKl6fo8i9jd6GxG98tNhF/UPsgPUFV5+pm69b6VzfhxC3Qh633
         ZPAA==
X-Gm-Message-State: AO0yUKXMCFcwiJBNg8a5P0cbNsesQoioHPe7Jw2FMJ5X5l5qWxg924UR
	9hLPoSwZQbElsynJ20zpvMUNUHimK6Xmxaz/HepKO+Rg
X-Google-Smtp-Source: AK7set8/mMOeRQfI0SzS7VmayrF+lkziaBf2mSmKHYCfX8qAH2GPW32TprON+LtUX5ehQJAw/2SL7eWbeq0Hx8m8+Z0=
X-Received: by 2002:a05:6808:9a7:b0:386:d34c:16fe with SMTP id
 e7-20020a05680809a700b00386d34c16femr969451oig.3.1679084869443; Fri, 17 Mar
 2023 13:27:49 -0700 (PDT)
MIME-Version: 1.0
References: <20230317081718.2650744-1-lee@kernel.org> <20230317081718.2650744-19-lee@kernel.org>
In-Reply-To: <20230317081718.2650744-19-lee@kernel.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Fri, 17 Mar 2023 16:27:36 -0400
Message-ID: <CADnq5_Piyr=XPu3OvPAE6YUhT1gcuUFJYkxgf=0YZbVr1fKDHA@mail.gmail.com>
To: Lee Jones <lee@kernel.org>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 162923F4A0
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,amd.com,vger.kernel.org,linaro.org,lists.linaro.org,ffwll.ch,gmail.com];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.180:from];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	URIBL_BLOCKED(0.00)[linaro.org:email,amd.com:email,ffwll.ch:email];
	RCVD_COUNT_TWO(0.00)[2]
Message-ID-Hash: 3TSEUPXDK7MNKRKQTFSHY5B34VZ6XLII
X-Message-ID-Hash: 3TSEUPXDK7MNKRKQTFSHY5B34VZ6XLII
X-MailFrom: alexdeucher@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, "Pan, Xinhui" <Xinhui.Pan@amd.com>, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, Sumit Semwal <sumit.semwal@linaro.org>, linaro-mm-sig@lists.linaro.org, Daniel Vetter <daniel@ffwll.ch>, Alex Deucher <alexander.deucher@amd.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 18/37] drm/amd/amdgpu/amdgpu_vce: Provide description for amdgpu_vce_validate_bo()'s 'p' param
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3TSEUPXDK7MNKRKQTFSHY5B34VZ6XLII/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QXBwbGllZCB3aXRoIG1pbm9yIG1vZGlmaWNhdGlvbi4gIFRoYW5rcyENCg0KQWxleA0KDQpPbiBG
cmksIE1hciAxNywgMjAyMyBhdCA0OjIz4oCvQU0gTGVlIEpvbmVzIDxsZWVAa2VybmVsLm9yZz4g
d3JvdGU6DQo+DQo+IEZpeGVzIHRoZSBmb2xsb3dpbmcgVz0xIGtlcm5lbCBidWlsZCB3YXJuaW5n
KHMpOg0KPg0KPiAgZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3ZjZS5jOjU5OTog
d2FybmluZzogRnVuY3Rpb24gcGFyYW1ldGVyIG9yIG1lbWJlciAncCcgbm90IGRlc2NyaWJlZCBp
biAnYW1kZ3B1X3ZjZV92YWxpZGF0ZV9ibycNCj4NCj4gQ2M6IEFsZXggRGV1Y2hlciA8YWxleGFu
ZGVyLmRldWNoZXJAYW1kLmNvbT4NCj4gQ2M6ICJDaHJpc3RpYW4gS8O2bmlnIiA8Y2hyaXN0aWFu
LmtvZW5pZ0BhbWQuY29tPg0KPiBDYzogIlBhbiwgWGluaHVpIiA8WGluaHVpLlBhbkBhbWQuY29t
Pg0KPiBDYzogRGF2aWQgQWlybGllIDxhaXJsaWVkQGdtYWlsLmNvbT4NCj4gQ2M6IERhbmllbCBW
ZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4NCj4gQ2M6IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2Fs
QGxpbmFyby5vcmc+DQo+IENjOiBhbWQtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzog
ZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogbGludXgtbWVkaWFAdmdlci5r
ZXJuZWwub3JnDQo+IENjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcNCj4gU2lnbmVk
LW9mZi1ieTogTGVlIEpvbmVzIDxsZWVAa2VybmVsLm9yZz4NCj4gLS0tDQo+ICBkcml2ZXJzL2dw
dS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdmNlLmMgfCAxICsNCj4gIDEgZmlsZSBjaGFuZ2VkLCAx
IGluc2VydGlvbigrKQ0KPg0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRn
cHUvYW1kZ3B1X3ZjZS5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3ZjZS5j
DQo+IGluZGV4IDJmYjYxNDEwYjFjMDIuLmM0ZDY1YWRlNWMwMGEgMTAwNjQ0DQo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV92Y2UuYw0KPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdmNlLmMNCj4gQEAgLTU4NSw2ICs1ODUsNyBAQCBzdGF0
aWMgaW50IGFtZGdwdV92Y2VfZ2V0X2Rlc3Ryb3lfbXNnKHN0cnVjdCBhbWRncHVfcmluZyAqcmlu
ZywgdWludDMyX3QgaGFuZGxlLA0KPiAgLyoqDQo+ICAgKiBhbWRncHVfdmNlX3ZhbGlkYXRlX2Jv
IC0gbWFrZSBzdXJlIG5vdCB0byBjcm9zcyA0R0IgYm91bmRhcnkNCj4gICAqDQo+ICsgKiBAcDog
cGFyc2VyIGNvbnRleHQNCj4gICAqIEBpYjogaW5kaXJlY3QgYnVmZmVyIHRvIHVzZQ0KPiAgICog
QGxvOiBhZGRyZXNzIG9mIGxvd2VyIGR3b3JkDQo+ICAgKiBAaGk6IGFkZHJlc3Mgb2YgaGlnaGVy
IGR3b3JkDQo+IC0tDQo+IDIuNDAuMC5yYzEuMjg0Lmc4ODI1NGQ1MWM1LWdvb2cNCj4NCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9y
Zwo=
