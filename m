Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 09DF970E12B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 May 2023 17:57:20 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0C7BF44D76
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 May 2023 15:57:19 +0000 (UTC)
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com [209.85.167.171])
	by lists.linaro.org (Postfix) with ESMTPS id 1E0B13F49E
	for <linaro-mm-sig@lists.linaro.org>; Tue, 23 May 2023 15:57:15 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20221208 header.b=nIEgy4xs;
	spf=pass (lists.linaro.org: domain of alexdeucher@gmail.com designates 209.85.167.171 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-oi1-f171.google.com with SMTP id 5614622812f47-38ef6217221so4299055b6e.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 23 May 2023 08:57:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684857434; x=1687449434;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eRQKQx8o7pYZMBO/dPIhBa/weTc59LxA8RBQRRvbAww=;
        b=nIEgy4xsmB+3hYy0CDH3MPkPWE5BrLDU5tN7cSIz3IzgJBvUH63E7oD9+J8dFGHW9L
         FBZbFIgKNh8FcUIK+6hwQfqH84IMyWxuYNPVjHn+W1EB9utNHces2xfBTPye8n7jt8Tq
         0M8B3LQCzG2nX5FKJV/Tgx3TrxVg+uNFPJ6ZBLP0xSSdPeXhuv+JU9S7B+REPf7DKtFJ
         KEvlWJocc0Ml50bYDpWW+Qn4erdWJqgeHE9UPd/j4CCJUhgFIZzzEVhqh5p3fCV+rOIV
         uwSe4xyITKa9BhftK4hXho1frTE+zqE820is8Ci3xzkG9ZEEVVaL4jV5XuDAqCDQDU5x
         kxnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684857434; x=1687449434;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eRQKQx8o7pYZMBO/dPIhBa/weTc59LxA8RBQRRvbAww=;
        b=CMjyoaHHk/ppkUwwkdoZM4tudVBuKdj3MIxgnikEvo8+gbuaKndhpuSZXGlxkUFO0R
         +2ZFVixeJcWGBbxP2USQmUyrdEctxlIWBFD6O4CyAVQJGE7/vAZ9G7IXmbz6lRpZudaB
         If5a2NH2iH3htjKtEAEeMZ7zueHBGB+I30Jqau/nJ5FVw7UFX0j6phuZO7gzu76skLbY
         bJdUvB5JHOUaRvjbfW0zBo40sAkFswY20wHTyRgHE8xtFXPF9IteqVUF/ix/SAud1aMl
         iK3jLIfeOSwwBiA3ObzVOUxtRcFqn/l4MggoWgvcnyWibF//4lfX5DCNWdQ/+4ryIiMY
         3EtA==
X-Gm-Message-State: AC+VfDy8DDAR6ylSdR7/A5qGyA1ChGabvHSpJ7VaaUqrClPS8BQdRgXr
	/I++wTq7xH/ARZwCEYJZALGjPVRlnVs5gxVXW1tU7V0D
X-Google-Smtp-Source: ACHHUZ7DHxeQXuGbDyGY66H9cdMMYdFh6mTJpvChsFzqktlYAXoSFaO4ugdpNPumCfSnl1H7T26HF1Xrnt8cWO29BAg=
X-Received: by 2002:a05:6808:6393:b0:398:af5:a18a with SMTP id
 ec19-20020a056808639300b003980af5a18amr3200495oib.59.1684857434503; Tue, 23
 May 2023 08:57:14 -0700 (PDT)
MIME-Version: 1.0
References: <20230523031709.19673-1-jiapeng.chong@linux.alibaba.com>
In-Reply-To: <20230523031709.19673-1-jiapeng.chong@linux.alibaba.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Tue, 23 May 2023 11:57:03 -0400
Message-ID: <CADnq5_NKuq8ZO0mBMmogwTesr1gWa=aXO9BJFp0bnfWhYj7X7A@mail.gmail.com>
To: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20221208];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ARC_NA(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	NEURAL_HAM(-0.00)[-0.974];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.171:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 1E0B13F49E
X-Spamd-Bar: --------
Message-ID-Hash: E6IX6UY7GGF77AWBH6WIURK4G5ABWZD2
X-Message-ID-Hash: E6IX6UY7GGF77AWBH6WIURK4G5ABWZD2
X-MailFrom: alexdeucher@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: alexander.deucher@amd.com, linaro-mm-sig@lists.linaro.org, llvm@lists.linux.dev, trix@redhat.com, Xinhui.Pan@amd.com, ndesaulniers@google.com, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, sumit.semwal@linaro.org, nathan@kernel.org, Abaci Robot <abaci@linux.alibaba.com>, dri-devel@lists.freedesktop.org, christian.koenig@amd.com, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm/amdgpu: Modify mismatched function name
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/E6IX6UY7GGF77AWBH6WIURK4G5ABWZD2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QXBwbGllZC4gIFRoYW5rcyENCg0KT24gTW9uLCBNYXkgMjIsIDIwMjMgYXQgMTE6MTfigK9QTSBK
aWFwZW5nIENob25nDQo8amlhcGVuZy5jaG9uZ0BsaW51eC5hbGliYWJhLmNvbT4gd3JvdGU6DQo+
DQo+IE5vIGZ1bmN0aW9uYWwgbW9kaWZpY2F0aW9uIGludm9sdmVkLg0KPg0KPiBkcml2ZXJzL2dw
dS9kcm0vYW1kL2FtZGdwdS9zZG1hX3Y0XzRfMi5jOjQyNjogd2FybmluZzogZXhwZWN0aW5nIHBy
b3RvdHlwZSBmb3Igc2RtYV92NF80XzJfZ2Z4X3N0b3AoKS4gUHJvdG90eXBlIHdhcyBmb3Igc2Rt
YV92NF80XzJfaW5zdF9nZnhfc3RvcCgpIGluc3RlYWQuDQo+IGRyaXZlcnMvZ3B1L2RybS9hbWQv
YW1kZ3B1L3NkbWFfdjRfNF8yLmM6NDU3OiB3YXJuaW5nOiBleHBlY3RpbmcgcHJvdG90eXBlIGZv
ciBzZG1hX3Y0XzRfMl9ybGNfc3RvcCgpLiBQcm90b3R5cGUgd2FzIGZvciBzZG1hX3Y0XzRfMl9p
bnN0X3JsY19zdG9wKCkgaW5zdGVhZC4NCj4gZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvc2Rt
YV92NF80XzIuYzo0NzA6IHdhcm5pbmc6IGV4cGVjdGluZyBwcm90b3R5cGUgZm9yIHNkbWFfdjRf
NF8yX3BhZ2Vfc3RvcCgpLiBQcm90b3R5cGUgd2FzIGZvciBzZG1hX3Y0XzRfMl9pbnN0X3BhZ2Vf
c3RvcCgpIGluc3RlYWQuDQo+IGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L3NkbWFfdjRfNF8y
LmM6NTA2OiB3YXJuaW5nOiBleHBlY3RpbmcgcHJvdG90eXBlIGZvciBzZG1hX3Y0XzRfMl9jdHhf
c3dpdGNoX2VuYWJsZSgpLiBQcm90b3R5cGUgd2FzIGZvciBzZG1hX3Y0XzRfMl9pbnN0X2N0eF9z
d2l0Y2hfZW5hYmxlKCkgaW5zdGVhZC4NCj4gZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvc2Rt
YV92NF80XzIuYzo1NjE6IHdhcm5pbmc6IGV4cGVjdGluZyBwcm90b3R5cGUgZm9yIHNkbWFfdjRf
NF8yX2VuYWJsZSgpLiBQcm90b3R5cGUgd2FzIGZvciBzZG1hX3Y0XzRfMl9pbnN0X2VuYWJsZSgp
IGluc3RlYWQuDQo+IGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L3NkbWFfdjRfNF8yLmM6Nzk4
OiB3YXJuaW5nOiBleHBlY3RpbmcgcHJvdG90eXBlIGZvciBzZG1hX3Y0XzRfMl9ybGNfcmVzdW1l
KCkuIFByb3RvdHlwZSB3YXMgZm9yIHNkbWFfdjRfNF8yX2luc3RfcmxjX3Jlc3VtZSgpIGluc3Rl
YWQuDQo+IGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L3NkbWFfdjRfNF8yLmM6ODE0OiB3YXJu
aW5nOiBleHBlY3RpbmcgcHJvdG90eXBlIGZvciBzZG1hX3Y0XzRfMl9sb2FkX21pY3JvY29kZSgp
LiBQcm90b3R5cGUgd2FzIGZvciBzZG1hX3Y0XzRfMl9pbnN0X2xvYWRfbWljcm9jb2RlKCkgaW5z
dGVhZC4NCj4NCj4gUmVwb3J0ZWQtYnk6IEFiYWNpIFJvYm90IDxhYmFjaUBsaW51eC5hbGliYWJh
LmNvbT4NCj4gTGluazogaHR0cHM6Ly9idWd6aWxsYS5vcGVuYW5vbGlzLmNuL3Nob3dfYnVnLmNn
aT9pZD01MjgzDQo+IFNpZ25lZC1vZmYtYnk6IEppYXBlbmcgQ2hvbmcgPGppYXBlbmcuY2hvbmdA
bGludXguYWxpYmFiYS5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUv
c2RtYV92NF80XzIuYyB8IDE0ICsrKysrKystLS0tLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgNyBp
bnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQ0KPg0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2FtZC9hbWRncHUvc2RtYV92NF80XzIuYyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1k
Z3B1L3NkbWFfdjRfNF8yLmMNCj4gaW5kZXggYmY0N2ViMzNjMTJlLi41OTBiMDg1ODU5MDEgMTAw
NjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L3NkbWFfdjRfNF8yLmMNCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvc2RtYV92NF80XzIuYw0KPiBAQCAtNDE1
LDcgKzQxNSw3IEBAIHN0YXRpYyB2b2lkIHNkbWFfdjRfNF8yX3JpbmdfZW1pdF9mZW5jZShzdHJ1
Y3QgYW1kZ3B1X3JpbmcgKnJpbmcsIHU2NCBhZGRyLCB1NjQNCj4NCj4NCj4gIC8qKg0KPiAtICog
c2RtYV92NF80XzJfZ2Z4X3N0b3AgLSBzdG9wIHRoZSBnZnggYXN5bmMgZG1hIGVuZ2luZXMNCj4g
KyAqIHNkbWFfdjRfNF8yX2luc3RfZ2Z4X3N0b3AgLSBzdG9wIHRoZSBnZnggYXN5bmMgZG1hIGVu
Z2luZXMNCj4gICAqDQo+ICAgKiBAYWRldjogYW1kZ3B1X2RldmljZSBwb2ludGVyDQo+ICAgKg0K
PiBAQCAtNDQ2LDcgKzQ0Niw3IEBAIHN0YXRpYyB2b2lkIHNkbWFfdjRfNF8yX2luc3RfZ2Z4X3N0
b3Aoc3RydWN0IGFtZGdwdV9kZXZpY2UgKmFkZXYsDQo+ICB9DQo+DQo+ICAvKioNCj4gLSAqIHNk
bWFfdjRfNF8yX3JsY19zdG9wIC0gc3RvcCB0aGUgY29tcHV0ZSBhc3luYyBkbWEgZW5naW5lcw0K
PiArICogc2RtYV92NF80XzJfaW5zdF9ybGNfc3RvcCAtIHN0b3AgdGhlIGNvbXB1dGUgYXN5bmMg
ZG1hIGVuZ2luZXMNCj4gICAqDQo+ICAgKiBAYWRldjogYW1kZ3B1X2RldmljZSBwb2ludGVyDQo+
ICAgKg0KPiBAQCAtNDU5LDcgKzQ1OSw3IEBAIHN0YXRpYyB2b2lkIHNkbWFfdjRfNF8yX2luc3Rf
cmxjX3N0b3Aoc3RydWN0IGFtZGdwdV9kZXZpY2UgKmFkZXYsDQo+ICB9DQo+DQo+ICAvKioNCj4g
LSAqIHNkbWFfdjRfNF8yX3BhZ2Vfc3RvcCAtIHN0b3AgdGhlIHBhZ2UgYXN5bmMgZG1hIGVuZ2lu
ZXMNCj4gKyAqIHNkbWFfdjRfNF8yX2luc3RfcGFnZV9zdG9wIC0gc3RvcCB0aGUgcGFnZSBhc3lu
YyBkbWEgZW5naW5lcw0KPiAgICoNCj4gICAqIEBhZGV2OiBhbWRncHVfZGV2aWNlIHBvaW50ZXIN
Cj4gICAqDQo+IEBAIC00OTQsNyArNDk0LDcgQEAgc3RhdGljIHZvaWQgc2RtYV92NF80XzJfaW5z
dF9wYWdlX3N0b3Aoc3RydWN0IGFtZGdwdV9kZXZpY2UgKmFkZXYsDQo+ICB9DQo+DQo+ICAvKioN
Cj4gLSAqIHNkbWFfdjRfNF8yX2N0eF9zd2l0Y2hfZW5hYmxlIC0gc3RvcCB0aGUgYXN5bmMgZG1h
IGVuZ2luZXMgY29udGV4dCBzd2l0Y2gNCj4gKyAqIHNkbWFfdjRfNF8yX2luc3RfY3R4X3N3aXRj
aF9lbmFibGUgLSBzdG9wIHRoZSBhc3luYyBkbWEgZW5naW5lcyBjb250ZXh0IHN3aXRjaA0KPiAg
ICoNCj4gICAqIEBhZGV2OiBhbWRncHVfZGV2aWNlIHBvaW50ZXINCj4gICAqIEBlbmFibGU6IGVu
YWJsZS9kaXNhYmxlIHRoZSBETUEgTUVzIGNvbnRleHQgc3dpdGNoLg0KPiBAQCAtNTQ4LDcgKzU0
OCw3IEBAIHN0YXRpYyB2b2lkIHNkbWFfdjRfNF8yX2luc3RfY3R4X3N3aXRjaF9lbmFibGUoc3Ry
dWN0IGFtZGdwdV9kZXZpY2UgKmFkZXYsDQo+ICB9DQo+DQo+ICAvKioNCj4gLSAqIHNkbWFfdjRf
NF8yX2VuYWJsZSAtIHN0b3AgdGhlIGFzeW5jIGRtYSBlbmdpbmVzDQo+ICsgKiBzZG1hX3Y0XzRf
Ml9pbnN0X2VuYWJsZSAtIHN0b3AgdGhlIGFzeW5jIGRtYSBlbmdpbmVzDQo+ICAgKg0KPiAgICog
QGFkZXY6IGFtZGdwdV9kZXZpY2UgcG9pbnRlcg0KPiAgICogQGVuYWJsZTogZW5hYmxlL2Rpc2Fi
bGUgdGhlIERNQSBNRXMuDQo+IEBAIC03ODYsNyArNzg2LDcgQEAgc3RhdGljIHZvaWQgc2RtYV92
NF80XzJfaW5pdF9wZyhzdHJ1Y3QgYW1kZ3B1X2RldmljZSAqYWRldikNCj4gIH0NCj4NCj4gIC8q
Kg0KPiAtICogc2RtYV92NF80XzJfcmxjX3Jlc3VtZSAtIHNldHVwIGFuZCBzdGFydCB0aGUgYXN5
bmMgZG1hIGVuZ2luZXMNCj4gKyAqIHNkbWFfdjRfNF8yX2luc3RfcmxjX3Jlc3VtZSAtIHNldHVw
IGFuZCBzdGFydCB0aGUgYXN5bmMgZG1hIGVuZ2luZXMNCj4gICAqDQo+ICAgKiBAYWRldjogYW1k
Z3B1X2RldmljZSBwb2ludGVyDQo+ICAgKg0KPiBAQCAtODAyLDcgKzgwMiw3IEBAIHN0YXRpYyBp
bnQgc2RtYV92NF80XzJfaW5zdF9ybGNfcmVzdW1lKHN0cnVjdCBhbWRncHVfZGV2aWNlICphZGV2
LA0KPiAgfQ0KPg0KPiAgLyoqDQo+IC0gKiBzZG1hX3Y0XzRfMl9sb2FkX21pY3JvY29kZSAtIGxv
YWQgdGhlIHNETUEgTUUgdWNvZGUNCj4gKyAqIHNkbWFfdjRfNF8yX2luc3RfbG9hZF9taWNyb2Nv
ZGUgLSBsb2FkIHRoZSBzRE1BIE1FIHVjb2RlDQo+ICAgKg0KPiAgICogQGFkZXY6IGFtZGdwdV9k
ZXZpY2UgcG9pbnRlcg0KPiAgICoNCj4gLS0NCj4gMi4yMC4xLjcuZzE1MzE0NGMNCj4NCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9y
Zwo=
