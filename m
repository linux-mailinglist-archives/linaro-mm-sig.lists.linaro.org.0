Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E355C4B87E3
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Feb 2022 13:42:58 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 203DB401C4
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Feb 2022 12:42:58 +0000 (UTC)
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	by lists.linaro.org (Postfix) with ESMTPS id C40413E802
	for <linaro-mm-sig@lists.linaro.org>; Mon, 14 Feb 2022 18:33:39 +0000 (UTC)
Received: by mail-lf1-f41.google.com with SMTP id j15so9481830lfe.11
        for <linaro-mm-sig@lists.linaro.org>; Mon, 14 Feb 2022 10:33:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=+UXFaXNtu58P+/quLcAfHAU/S4vyiJKyaqPdTSKWST8=;
        b=sFWvgW3k1pSL7Awgb8qEobnrOdmxWAQzBkRi13UyvlHolBMEQeW1vZwFUQObSIyQ5+
         WwxOX5EZ2YssQReVrEIaLaKMtZDW45gNyPiqD+FzwuWMiiJQKLoUgq5bk9eGeCgq7fWV
         Nex4LYQZ0zfuPsfJ5Do35sWOxMSXkP2F/ldXGgcURzQ7QzCfQkf3gBgtLjSTlL56o0f7
         6/dWI8Ilo2YFMJgNivikdUb843ij4RWNUXAhKRBoVTLsZ49MA+kNqzBUYGk0l3fUxFtG
         i6XHAhuqsKFUywKLl0k0he5kFM40nP/it0yBh1AIb2ocynTZ86LQIzxv4JaSp1egrbGJ
         ak1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=+UXFaXNtu58P+/quLcAfHAU/S4vyiJKyaqPdTSKWST8=;
        b=fa3P2NCyZQC/c7+QyFCzE3gcLUlXIoipvc+U/zuDmsmHUXNrL5Mz1Qh5s9/zRwLeSg
         YrmsGBkkGp+DNYdTlH3epn8L/D7KAFd3db4Wh4/A8stmBBgCCa1hak9DFXzrPdFgesH5
         zO6Wz/zXsmMOgAzx29+Y0RDnK6u2Yp6TeGFb89kwg1brkcg6o+kzwolSYVvb1Mfcu3N7
         2S9tovVmur7r168omCrJtic7txSCfYUqeD8OpK8HUKMZsYEHgmcGIE6KvWM7P9hC6eXc
         JbZPM7fVd1I0F7XOUUIkEBr0Qk6YGWUwn7DHJEFQRMgzp9aDhIZrwC5FXUB0w45KRYTa
         dkCw==
X-Gm-Message-State: AOAM531b3aJvdypMkTEOI93SJP+jGz/5nkW/ep0S06s/TNhDnzkA3oD5
	2U+hJId6bABKtufdcOr5EhSC7t2XDfw+k8Kb4cdnMQ==
X-Google-Smtp-Source: ABdhPJwwl8BcmiJDJptm3GNGEag/XtunVIJ3dClslrEmIM5Q/7qRR7YjLKxYa2rJ+R/XHsCI0mf1xl6e/KkNmj5TfVU=
X-Received: by 2002:a05:6512:1154:: with SMTP id m20mr249590lfg.682.1644863618292;
 Mon, 14 Feb 2022 10:33:38 -0800 (PST)
MIME-Version: 1.0
References: <20220211161831.3493782-1-tjmercier@google.com>
 <20220211161831.3493782-7-tjmercier@google.com> <Ygdfe3XSvN8iFuUc@kroah.com>
In-Reply-To: <Ygdfe3XSvN8iFuUc@kroah.com>
From: Todd Kjos <tkjos@google.com>
Date: Mon, 14 Feb 2022 10:33:25 -0800
Message-ID: <CAHRSSEwoJ67Sr_=gtSaP91cbpjJjZdOo57cfAhv3r-ye0da7PA@mail.gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-MailFrom: tkjos@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: SBCL2WVHC44XOWABYT5KCZNE3DL5VTZJ
X-Message-ID-Hash: SBCL2WVHC44XOWABYT5KCZNE3DL5VTZJ
X-Mailman-Approved-At: Wed, 16 Feb 2022 12:42:34 +0000
CC: "T.J. Mercier" <tjmercier@google.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>, Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>, Joel Fernandes <joel@joelfernandes.org>, Christian Brauner <brauner@kernel.org>, Hridya Valsaraju <hridya@google.com>, Suren Baghdasaryan <surenb@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Benjamin Gaignard <benjamin.gaignard@linaro.org>, Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <john.stultz@linaro.org>, Tejun Heo <tj@kernel.org>, Zefan Li <lizefan.x@bytedance.com>, Johannes Weiner <hannes@cmpxchg.org>, kaleshsingh@google.com, Kenny.Ho@amd.com, dri-devel@lists.freedesktop.org, linux-do
 c@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, cgroups@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v2 6/6] android: binder: Add a buffer flag to relinquish ownership of fds
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SBCL2WVHC44XOWABYT5KCZNE3DL5VTZJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gRnJpLCBGZWIgMTEsIDIwMjIgYXQgMTE6MTkgUE0gR3JlZyBLcm9haC1IYXJ0bWFuDQo8Z3Jl
Z2toQGxpbnV4Zm91bmRhdGlvbi5vcmc+IHdyb3RlOg0KPg0KPiBPbiBGcmksIEZlYiAxMSwgMjAy
MiBhdCAwNDoxODoyOVBNICswMDAwLCBULkouIE1lcmNpZXIgd3JvdGU6DQoNClRpdGxlOiAiYW5k
cm9pZDogYmluZGVyOiBBZGQgYSBidWZmZXIgZmxhZyB0byByZWxpbnF1aXNoIG93bmVyc2hpcCBv
ZiBmZHMiDQoNClBsZWFzZSBkcm9wIHRoZSAiYW5kcm9pZDoiIGZyb20gdGhlIHRpdGxlLg0KDQo+
ID4gVGhpcyBwYXRjaCBpbnRyb2R1Y2VzIGEgYnVmZmVyIGZsYWcgQklOREVSX0JVRkZFUl9GTEFH
X1NFTkRFUl9OT19ORUVEDQo+ID4gdGhhdCBhIHByb2Nlc3Mgc2VuZGluZyBhbiBmZCBhcnJheSB0
byBhbm90aGVyIHByb2Nlc3Mgb3ZlciBiaW5kZXIgSVBDDQo+ID4gY2FuIHNldCB0byByZWxpbnF1
aXNoIG93bmVyc2hpcCBvZiB0aGUgZmRzIGJlaW5nIHNlbnQgZm9yIG1lbW9yeQ0KPiA+IGFjY291
bnRpbmcgcHVycG9zZXMuIElmIHRoZSBmbGFnIGlzIGZvdW5kIHRvIGJlIHNldCBkdXJpbmcgdGhl
IGZkIGFycmF5DQo+ID4gdHJhbnNsYXRpb24gYW5kIHRoZSBmZCBpcyBmb3IgYSBETUEtQlVGLCB0
aGUgYnVmZmVyIGlzIHVuY2hhcmdlZCBmcm9tDQo+ID4gdGhlIHNlbmRlcidzIGNncm91cCBhbmQg
Y2hhcmdlZCB0byB0aGUgcmVjZWl2aW5nIHByb2Nlc3MncyBjZ3JvdXANCj4gPiBpbnN0ZWFkLg0K
PiA+DQo+ID4gSXQgaXMgdXAgdG8gdGhlIHNlbmRpbmcgcHJvY2VzcyB0byBlbnN1cmUgdGhhdCBp
dCBjbG9zZXMgdGhlIGZkcw0KPiA+IHJlZ2FyZGxlc3Mgb2Ygd2hldGhlciB0aGUgdHJhbnNmZXIg
ZmFpbGVkIG9yIHN1Y2NlZWRlZC4NCj4gPg0KPiA+IE1vc3QgZ3JhcGhpY3Mgc2hhcmVkIG1lbW9y
eSBhbGxvY2F0aW9ucyBpbiBBbmRyb2lkIGFyZSBkb25lIGJ5IHRoZQ0KPiA+IGdyYXBoaWNzIGFs
bG9jYXRvciBIQUwgcHJvY2Vzcy4gT24gcmVxdWVzdHMgZnJvbSBjbGllbnRzLCB0aGUgSEFMIHBy
b2Nlc3MNCj4gPiBhbGxvY2F0ZXMgbWVtb3J5IGFuZCBzZW5kcyB0aGUgZmRzIHRvIHRoZSBjbGll
bnRzIG92ZXIgYmluZGVyIElQQy4NCj4gPiBUaGUgZ3JhcGhpY3MgYWxsb2NhdG9yIEhBTCB3aWxs
IG5vdCByZXRhaW4gYW55IHJlZmVyZW5jZXMgdG8gdGhlDQo+ID4gYnVmZmVycy4gV2hlbiB0aGUg
SEFMIHNldHMgdGhlIEJJTkRFUl9CVUZGRVJfRkxBR19TRU5ERVJfTk9fTkVFRCBmb3IgZmQNCj4g
PiBhcnJheXMgaG9sZGluZyBETUEtQlVGIGZkcywgdGhlIGdwdSBjZ3JvdXAgY29udHJvbGxlciB3
aWxsIGJlIGFibGUgdG8NCj4gPiBjb3JyZWN0bHkgY2hhcmdlIHRoZSBidWZmZXJzIHRvIHRoZSBj
bGllbnQgcHJvY2Vzc2VzIGluc3RlYWQgb2YgdGhlDQo+ID4gZ3JhcGhpY3MgYWxsb2NhdG9yIEhB
TC4NCj4gPg0KPiA+IEZyb206IEhyaWR5YSBWYWxzYXJhanUgPGhyaWR5YUBnb29nbGUuY29tPg0K
PiA+IFNpZ25lZC1vZmYtYnk6IEhyaWR5YSBWYWxzYXJhanUgPGhyaWR5YUBnb29nbGUuY29tPg0K
PiA+IENvLWRldmVsb3BlZC1ieTogVC5KLiBNZXJjaWVyIDx0am1lcmNpZXJAZ29vZ2xlLmNvbT4N
Cj4gPiBTaWduZWQtb2ZmLWJ5OiBULkouIE1lcmNpZXIgPHRqbWVyY2llckBnb29nbGUuY29tPg0K
PiA+IC0tLQ0KPiA+IGNoYW5nZXMgaW4gdjINCj4gPiAtIE1vdmUgZG1hLWJ1ZiBjZ3JvdXAgY2hh
cmdlIHRyYW5zZmVyIGZyb20gYSBkbWFfYnVmX29wIGRlZmluZWQgYnkgZXZlcnkNCj4gPiBoZWFw
IHRvIGEgc2luZ2xlIGRtYS1idWYgZnVuY3Rpb24gZm9yIGFsbCBoZWFwcyBwZXIgRGFuaWVsIFZl
dHRlciBhbmQNCj4gPiBDaHJpc3RpYW4gS8O2bmlnLg0KPiA+DQo+ID4gIGRyaXZlcnMvYW5kcm9p
ZC9iaW5kZXIuYyAgICAgICAgICAgIHwgMjYgKysrKysrKysrKysrKysrKysrKysrKysrKysNCj4g
PiAgaW5jbHVkZS91YXBpL2xpbnV4L2FuZHJvaWQvYmluZGVyLmggfCAgMSArDQo+ID4gIDIgZmls
ZXMgY2hhbmdlZCwgMjcgaW5zZXJ0aW9ucygrKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvYW5kcm9pZC9iaW5kZXIuYyBiL2RyaXZlcnMvYW5kcm9pZC9iaW5kZXIuYw0KPiA+IGluZGV4
IDgzNTFjNTYzODg4MC4uZjUwZDg4ZGVkMTg4IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvYW5k
cm9pZC9iaW5kZXIuYw0KPiA+ICsrKyBiL2RyaXZlcnMvYW5kcm9pZC9iaW5kZXIuYw0KPiA+IEBA
IC00Miw2ICs0Miw3IEBADQo+ID4NCj4gPiAgI2RlZmluZSBwcl9mbXQoZm10KSBLQlVJTERfTU9E
TkFNRSAiOiAiIGZtdA0KPiA+DQo+ID4gKyNpbmNsdWRlIDxsaW51eC9kbWEtYnVmLmg+DQo+ID4g
ICNpbmNsdWRlIDxsaW51eC9mZHRhYmxlLmg+DQo+ID4gICNpbmNsdWRlIDxsaW51eC9maWxlLmg+
DQo+ID4gICNpbmNsdWRlIDxsaW51eC9mcmVlemVyLmg+DQo+ID4gQEAgLTI0ODIsOCArMjQ4Mywx
MCBAQCBzdGF0aWMgaW50IGJpbmRlcl90cmFuc2xhdGVfZmRfYXJyYXkoc3RydWN0IGxpc3RfaGVh
ZCAqcGZfaGVhZCwNCj4gPiAgew0KPiA+ICAgICAgIGJpbmRlcl9zaXplX3QgZmRpLCBmZF9idWZf
c2l6ZTsNCj4gPiAgICAgICBiaW5kZXJfc2l6ZV90IGZkYV9vZmZzZXQ7DQo+ID4gKyAgICAgYm9v
bCB0cmFuc2Zlcl9ncHVfY2hhcmdlID0gZmFsc2U7DQo+ID4gICAgICAgY29uc3Qgdm9pZCBfX3Vz
ZXIgKnNlbmRlcl91ZmRhX2Jhc2U7DQo+ID4gICAgICAgc3RydWN0IGJpbmRlcl9wcm9jICpwcm9j
ID0gdGhyZWFkLT5wcm9jOw0KPiA+ICsgICAgIHN0cnVjdCBiaW5kZXJfcHJvYyAqdGFyZ2V0X3By
b2MgPSB0LT50b19wcm9jOw0KPiA+ICAgICAgIGludCByZXQ7DQo+ID4NCj4gPiAgICAgICBmZF9i
dWZfc2l6ZSA9IHNpemVvZih1MzIpICogZmRhLT5udW1fZmRzOw0KPiA+IEBAIC0yNTIxLDggKzI1
MjQsMTUgQEAgc3RhdGljIGludCBiaW5kZXJfdHJhbnNsYXRlX2ZkX2FycmF5KHN0cnVjdCBsaXN0
X2hlYWQgKnBmX2hlYWQsDQo+ID4gICAgICAgaWYgKHJldCkNCj4gPiAgICAgICAgICAgICAgIHJl
dHVybiByZXQ7DQo+ID4NCj4gPiArICAgICBpZiAoSVNfRU5BQkxFRChDT05GSUdfQ0dST1VQX0dQ
VSkgJiYNCj4gPiArICAgICAgICAgICAgIHBhcmVudC0+ZmxhZ3MgJiBCSU5ERVJfQlVGRkVSX0ZM
QUdfU0VOREVSX05PX05FRUQpDQo+ID4gKyAgICAgICAgICAgICB0cmFuc2Zlcl9ncHVfY2hhcmdl
ID0gdHJ1ZTsNCj4gPiArDQo+ID4gICAgICAgZm9yIChmZGkgPSAwOyBmZGkgPCBmZGEtPm51bV9m
ZHM7IGZkaSsrKSB7DQo+ID4gICAgICAgICAgICAgICB1MzIgZmQ7DQo+ID4gKyAgICAgICAgICAg
ICBzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmOw0KPiA+ICsgICAgICAgICAgICAgc3RydWN0IGdwdWNn
ICpncHVjZzsNCj4gPiArDQo+ID4gICAgICAgICAgICAgICBiaW5kZXJfc2l6ZV90IG9mZnNldCA9
IGZkYV9vZmZzZXQgKyBmZGkgKiBzaXplb2YoZmQpOw0KPiA+ICAgICAgICAgICAgICAgYmluZGVy
X3NpemVfdCBzZW5kZXJfdW9mZnNldCA9IGZkaSAqIHNpemVvZihmZCk7DQo+ID4NCj4gPiBAQCAt
MjUzMiw2ICsyNTQyLDIyIEBAIHN0YXRpYyBpbnQgYmluZGVyX3RyYW5zbGF0ZV9mZF9hcnJheShz
dHJ1Y3QgbGlzdF9oZWFkICpwZl9oZWFkLA0KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIGluX3JlcGx5X3RvKTsNCj4gPiAgICAgICAgICAgICAgIGlm
IChyZXQpDQo+ID4gICAgICAgICAgICAgICAgICAgICAgIHJldHVybiByZXQgPiAwID8gLUVJTlZB
TCA6IHJldDsNCj4gPiArDQo+ID4gKyAgICAgICAgICAgICBpZiAoIXRyYW5zZmVyX2dwdV9jaGFy
Z2UpDQo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGNvbnRpbnVlOw0KPiA+ICsNCj4gPiArICAg
ICAgICAgICAgIGRtYWJ1ZiA9IGRtYV9idWZfZ2V0KGZkKTsNCj4gPiArICAgICAgICAgICAgIGlm
IChJU19FUlIoZG1hYnVmKSkNCj4gPiArICAgICAgICAgICAgICAgICAgICAgY29udGludWU7DQo+
ID4gKw0KPiA+ICsgICAgICAgICAgICAgZ3B1Y2cgPSBncHVjZ19nZXQodGFyZ2V0X3Byb2MtPnRz
ayk7DQo+ID4gKyAgICAgICAgICAgICByZXQgPSBkbWFfYnVmX2NoYXJnZV90cmFuc2ZlcihkbWFi
dWYsIGdwdWNnKTsNCj4gPiArICAgICAgICAgICAgIGlmIChyZXQpIHsNCj4gPiArICAgICAgICAg
ICAgICAgICAgICAgcHJfd2FybigiJWQ6JWQgVW5hYmxlIHRvIHRyYW5zZmVyIERNQS1CVUYgZmQg
Y2hhcmdlIHRvICVkIiwNCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICBwcm9jLT5w
aWQsIHRocmVhZC0+cGlkLCB0YXJnZXRfcHJvYy0+cGlkKTsNCj4gPiArICAgICAgICAgICAgICAg
ICAgICAgZ3B1Y2dfcHV0KGdwdWNnKTsNCj4gPiArICAgICAgICAgICAgIH0NCj4gPiArICAgICAg
ICAgICAgIGRtYV9idWZfcHV0KGRtYWJ1Zik7DQoNClNpbmNlIHdlIGFyZSBjcmVhdGluZyBhIG5l
dyBncHUgY2dyb3VwIGFic3RyYWN0aW9uLCBjb3VsZG4ndCB0aGlzDQoidHJhbnNmZXIiIGJlIGRv
bmUgaW4gdXNlcnNwYWNlIGJ5IHRoZSB0YXJnZXQgaW5zdGVhZCBvZiBpbiB0aGUga2VybmVsDQpk
cml2ZXI/IFRoZW4gdGhpcyBwYXRjaCB3b3VsZCByZWR1Y2UgdG8ganVzdCBhIGZsYWcgb24gdGhl
IGJ1ZmZlcg0Kb2JqZWN0LiBUaGlzIGFsc28gc29sdmVzIHRoZSBpc3N1ZSB0aGF0IEdyZWcgYnJv
dWdodCB1cCBhYm91dA0KdXNlcnNwYWNlIG5lZWRpbmcgdG8ga25vdyB3aGV0aGVyIHRoZSBrZXJu
ZWwgaW1wbGVtZW50cyB0aGlzIGZlYXR1cmUNCihvbGRlciBrZXJuZWwgcnVubmluZyB3aXRoIG5l
d2VyIHVzZXJzcGFjZSkuIEkgdGhpbmsgd2UgY291bGQganVzdA0KcmVzZXJ2ZSBzb21lIGZsYWdz
IGZvciB1c2Vyc3BhY2UgdG8gdXNlIChhbmQgc2luY2UgdGhvc2UgZmxhZ3MgYXJlDQoicmVzZXJ2
ZWQiIGZvciBvbGRlciBrZXJuZWxzLCB0aGlzIHdvdWxkIGVuYWJsZSB0aGlzIGZlYXR1cmUgZXZl
biBmb3INCm9sZCBrZXJuZWxzKQ0KDQo+ID4gICAgICAgfQ0KPiA+ICAgICAgIHJldHVybiAwOw0K
PiA+ICB9DQo+ID4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvdWFwaS9saW51eC9hbmRyb2lkL2JpbmRl
ci5oIGIvaW5jbHVkZS91YXBpL2xpbnV4L2FuZHJvaWQvYmluZGVyLmgNCj4gPiBpbmRleCAzMjQ2
ZjJjNzQ2OTYuLjE2OWZkNTA2OWExYSAxMDA2NDQNCj4gPiAtLS0gYS9pbmNsdWRlL3VhcGkvbGlu
dXgvYW5kcm9pZC9iaW5kZXIuaA0KPiA+ICsrKyBiL2luY2x1ZGUvdWFwaS9saW51eC9hbmRyb2lk
L2JpbmRlci5oDQo+ID4gQEAgLTEzNyw2ICsxMzcsNyBAQCBzdHJ1Y3QgYmluZGVyX2J1ZmZlcl9v
YmplY3Qgew0KPiA+DQo+ID4gIGVudW0gew0KPiA+ICAgICAgIEJJTkRFUl9CVUZGRVJfRkxBR19I
QVNfUEFSRU5UID0gMHgwMSwNCj4gPiArICAgICBCSU5ERVJfQlVGRkVSX0ZMQUdfU0VOREVSX05P
X05FRUQgPSAweDAyLA0KPiA+ICB9Ow0KPiA+DQo+ID4gIC8qIHN0cnVjdCBiaW5kZXJfZmRfYXJy
YXlfb2JqZWN0IC0gb2JqZWN0IGRlc2NyaWJpbmcgYW4gYXJyYXkgb2YgZmRzIGluIGEgYnVmZmVy
DQo+ID4gLS0NCj4gPiAyLjM1LjEuMjY1Lmc2OWM4ZDcxNDJmLWdvb2cNCj4gPg0KPg0KPiBIb3cg
ZG9lcyB1c2Vyc3BhY2Uga25vdyB0aGF0IGJpbmRlciBzdXBwb3J0cyB0aGlzIG5ldyBmbGFnPyAg
QW5kIHdoZXJlDQo+IGlzIHRoZSB1c2Vyc3BhY2UgdGVzdCBmb3IgdGhpcyBuZXcgZmVhdHVyZT8g
IElzbid0IHRoZXJlIGEgYmluZGVyIHRlc3QNCj4gZnJhbWV3b3JrIHNvbWV3aGVyZT8NCj4NCj4g
dGhhbmtzLA0KPg0KPiBncmVnIGstaA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJv
LW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
