Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DB904EAD0B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Mar 2022 14:21:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 64EA93EC0E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Mar 2022 12:21:37 +0000 (UTC)
Received: from mail-yb1-f202.google.com (mail-yb1-f202.google.com [209.85.219.202])
	by lists.linaro.org (Postfix) with ESMTPS id 2E4443EEA1
	for <linaro-mm-sig@lists.linaro.org>; Wed,  9 Mar 2022 16:52:52 +0000 (UTC)
Received: by mail-yb1-f202.google.com with SMTP id x11-20020a5b0f0b000000b0062277953037so2093174ybr.21
        for <linaro-mm-sig@lists.linaro.org>; Wed, 09 Mar 2022 08:52:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:content-transfer-encoding;
        bh=ArtryYFgH5mlYpraW6Z9pzBKDmlE5B7N8QDWxuF8nCw=;
        b=ET2G8YAxigglCgwH9ORXjYEpMOwkLAxVMGluElrrT20Iij1J38dmr6UP8EdlHvk4DN
         azfkhu/4N5mTJEJm6TVVmQy58D9W8S5IKUZrU96emS4lJxesAiyxiaL+UhI4peXvb1ET
         2NfRSubT3bKB7llEizgDSk5WlvkFPBL2wIZ+UrsonprCR0wGscERyJLQ5lFI6A7C+Mqr
         bBt/5MUBkAllxZeIaBAydEb4kU5tR1u3dOU4OHuIMqo5beiURrjjfEoxT78k7cZx6CKK
         JslptEply/Lv5cfDpBB3GPPAcjhXmY9D9nxBJ4PiqVjPoV/QbfVEvtvJmrpZObB+eaR2
         BMJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:content-transfer-encoding;
        bh=ArtryYFgH5mlYpraW6Z9pzBKDmlE5B7N8QDWxuF8nCw=;
        b=Zteodlb9CFpOzjDMU5KWoEhiv1DMcNYp69+xSpQXaFkU8XIIiHI+ub0b7eHjkMF8r9
         2ebrc0aDe2R7aHaz73p4m+3HtPSsAMc/U9WUc3arYQu9WqvyR6IapoHslidL7P3A0ixg
         1bx5Jq1YIWQZ/C9TLntdRvBnigNCt02n+uH1hQ6KiZnixlz/IUk9erKAvcz2HGHYBEwi
         VtekLDWU8HIQA6p5xqVJudSbPltQ9VJTZacnnmywTTDfnZIH8D8dZeMDcb1/9qdpzv5S
         Zp36KiNegwKag+Vibiuhxo1dYZpzRLhn9MMdLp2VSjEEWTWFWvBOyIxwDBV3MrLY30GS
         4+pA==
X-Gm-Message-State: AOAM5316+0agFv/M10ugcOxDv6GI+81A3r7PffEKlHDRRMZzADHq9XcT
	XxN26/n/iHzeJuA8JU5gy1uDPWLamJsBzLI=
X-Google-Smtp-Source: ABdhPJwhCCM8fnCv/YYjH2ItlE07Kq6zIIhQQNOdvRKBR0On1xzyi6be0Wrkn7kWsIBobS2Z6B4GB8mh7xehQH8=
X-Received: from tj2.c.googlers.com ([fda3:e722:ac3:cc00:20:ed76:c0a8:187])
 (user=tjmercier job=sendgmr) by 2002:a25:3403:0:b0:628:a2e4:ae8a with SMTP id
 b3-20020a253403000000b00628a2e4ae8amr504446yba.219.1646844771702; Wed, 09 Mar
 2022 08:52:51 -0800 (PST)
Date: Wed,  9 Mar 2022 16:52:16 +0000
In-Reply-To: <20220309165222.2843651-1-tjmercier@google.com>
Message-Id: <20220309165222.2843651-7-tjmercier@google.com>
Mime-Version: 1.0
References: <20220309165222.2843651-1-tjmercier@google.com>
X-Mailer: git-send-email 2.35.1.616.g0bdcbb4464-goog
From: "T.J. Mercier" <tjmercier@google.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
	Jonathan Corbet <corbet@lwn.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"=?UTF-8?q?Arve=20Hj=C3=B8nnev=C3=A5g?=" <arve@android.com>, Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>,
	Joel Fernandes <joel@joelfernandes.org>, Christian Brauner <brauner@kernel.org>,
	Hridya Valsaraju <hridya@google.com>, Suren Baghdasaryan <surenb@google.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	"=?UTF-8?q?Christian=20K=C3=B6nig?=" <christian.koenig@amd.com>, Benjamin Gaignard <benjamin.gaignard@linaro.org>,
	Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>,
	Brian Starkey <Brian.Starkey@arm.com>, John Stultz <john.stultz@linaro.org>,
	Tejun Heo <tj@kernel.org>, Zefan Li <lizefan.x@bytedance.com>,
	Johannes Weiner <hannes@cmpxchg.org>, Shuah Khan <shuah@kernel.org>
X-MailFrom: 3Y9soYgkKDdQJ9C4H284H6EE6B4.2ECB8D0HE-CC-I86B8IJI.B8D0HE.EH6@flex--tjmercier.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: H3TFF33EVKUCURGSKKXNMKWSA7GBPPYG
X-Message-ID-Hash: H3TFF33EVKUCURGSKKXNMKWSA7GBPPYG
X-Mailman-Approved-At: Tue, 29 Mar 2022 12:20:59 +0000
CC: kaleshsingh@google.com, Kenny.Ho@amd.com, "T.J. Mercier" <tjmercier@google.com>, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, cgroups@vger.kernel.org, linux-kselftest@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [RFC v3 6/8] binder: Add a buffer flag to relinquish ownership of fds
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/H3TFF33EVKUCURGSKKXNMKWSA7GBPPYG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RnJvbTogSHJpZHlhIFZhbHNhcmFqdSA8aHJpZHlhQGdvb2dsZS5jb20+DQoNClRoaXMgcGF0Y2gg
aW50cm9kdWNlcyBhIGJ1ZmZlciBmbGFnIEJJTkRFUl9CVUZGRVJfRkxBR19TRU5ERVJfTk9fTkVF
RA0KdGhhdCBhIHByb2Nlc3Mgc2VuZGluZyBhbiBmZCBhcnJheSB0byBhbm90aGVyIHByb2Nlc3Mg
b3ZlciBiaW5kZXIgSVBDDQpjYW4gc2V0IHRvIHJlbGlucXVpc2ggb3duZXJzaGlwIG9mIHRoZSBm
ZHMgYmVpbmcgc2VudCBmb3IgbWVtb3J5DQphY2NvdW50aW5nIHB1cnBvc2VzLiBJZiB0aGUgZmxh
ZyBpcyBmb3VuZCB0byBiZSBzZXQgZHVyaW5nIHRoZSBmZCBhcnJheQ0KdHJhbnNsYXRpb24gYW5k
IHRoZSBmZCBpcyBmb3IgYSBETUEtQlVGLCB0aGUgYnVmZmVyIGlzIHVuY2hhcmdlZCBmcm9tDQp0
aGUgc2VuZGVyJ3MgY2dyb3VwIGFuZCBjaGFyZ2VkIHRvIHRoZSByZWNlaXZpbmcgcHJvY2Vzcydz
IGNncm91cA0KaW5zdGVhZC4NCg0KSXQgaXMgdXAgdG8gdGhlIHNlbmRpbmcgcHJvY2VzcyB0byBl
bnN1cmUgdGhhdCBpdCBjbG9zZXMgdGhlIGZkcw0KcmVnYXJkbGVzcyBvZiB3aGV0aGVyIHRoZSB0
cmFuc2ZlciBmYWlsZWQgb3Igc3VjY2VlZGVkLg0KDQpNb3N0IGdyYXBoaWNzIHNoYXJlZCBtZW1v
cnkgYWxsb2NhdGlvbnMgaW4gQW5kcm9pZCBhcmUgZG9uZSBieSB0aGUNCmdyYXBoaWNzIGFsbG9j
YXRvciBIQUwgcHJvY2Vzcy4gT24gcmVxdWVzdHMgZnJvbSBjbGllbnRzLCB0aGUgSEFMIHByb2Nl
c3MNCmFsbG9jYXRlcyBtZW1vcnkgYW5kIHNlbmRzIHRoZSBmZHMgdG8gdGhlIGNsaWVudHMgb3Zl
ciBiaW5kZXIgSVBDLg0KVGhlIGdyYXBoaWNzIGFsbG9jYXRvciBIQUwgd2lsbCBub3QgcmV0YWlu
IGFueSByZWZlcmVuY2VzIHRvIHRoZQ0KYnVmZmVycy4gV2hlbiB0aGUgSEFMIHNldHMgdGhlIEJJ
TkRFUl9CVUZGRVJfRkxBR19TRU5ERVJfTk9fTkVFRCBmb3IgZmQNCmFycmF5cyBob2xkaW5nIERN
QS1CVUYgZmRzLCB0aGUgZ3B1IGNncm91cCBjb250cm9sbGVyIHdpbGwgYmUgYWJsZSB0bw0KY29y
cmVjdGx5IGNoYXJnZSB0aGUgYnVmZmVycyB0byB0aGUgY2xpZW50IHByb2Nlc3NlcyBpbnN0ZWFk
IG9mIHRoZQ0KZ3JhcGhpY3MgYWxsb2NhdG9yIEhBTC4NCg0KU2luY2UgdGhpcyBpcyBhIG5ldyBm
ZWF0dXJlIGV4cG9zZWQgdG8gdXNlcnNwYWNlLCB0aGUga2VybmVsIGFuZCB1c2Vyc3BhY2UNCm11
c3QgYmUgY29tcGF0aWJsZSBmb3IgdGhlIGFjY291bnRpbmcgdG8gd29yayBmb3IgdHJhbnNmZXJz
LiBJbiBhbGwgY2FzZXMNCnRoZSBhbGxvY2F0aW9uIGFuZCB0cmFuc3BvcnQgb2YgRE1BIGJ1ZmZl
cnMgdmlhIGJpbmRlciB3aWxsIHN1Y2NlZWQsIGJ1dA0Kb25seSB3aGVuIGJvdGggdGhlIGtlcm5l
bCBzdXBwb3J0cywgYW5kIHVzZXJzcGFjZSBkZXBlbmRzIG9uIHRoaXMgZmVhdHVyZQ0Kd2lsbCB0
aGUgdHJhbnNmZXIgYWNjb3VudGluZyB3b3JrLiBUaGUgcG9zc2libGUgc2NlbmFyaW9zIGFyZSBk
ZXRhaWxlZA0KYmVsb3c6DQoNCjEuIG5ldyBrZXJuZWwgKyBvbGQgdXNlcnNwYWNlDQpUaGUga2Vy
bmVsIHN1cHBvcnRzIHRoZSBmZWF0dXJlIGJ1dCB1c2Vyc3BhY2UgZG9lcyBub3QgdXNlIGl0LiBU
aGUgb2xkDQp1c2Vyc3BhY2Ugd29uJ3QgbW91bnQgdGhlIG5ldyBjZ3JvdXAgY29udHJvbGxlciwg
YWNjb3VudGluZyBpcyBub3QNCnBlcmZvcm1lZCwgY2hhcmdlIGlzIG5vdCB0cmFuc2ZlcnJlZC4N
Cg0KMi4gb2xkIGtlcm5lbCArIG5ldyB1c2Vyc3BhY2UNClRoZSBuZXcgY2dyb3VwIGNvbnRyb2xs
ZXIgaXMgbm90IHN1cHBvcnRlZCBieSB0aGUga2VybmVsLCBhY2NvdW50aW5nIGlzDQpub3QgcGVy
Zm9ybWVkLCBjaGFyZ2UgaXMgbm90IHRyYW5zZmVycmVkLg0KDQozLiBvbGQga2VybmVsICsgb2xk
IHVzZXJzcGFjZQ0KU2FtZSBhcyAjMg0KDQo0LiBuZXcga2VybmVsICsgbmV3IHVzZXJzcGFjZQ0K
Q2dyb3VwIGlzIG1vdW50ZWQsIGZlYXR1cmUgaXMgc3VwcG9ydGVkIGFuZCB1c2VkLg0KDQpTaWdu
ZWQtb2ZmLWJ5OiBIcmlkeWEgVmFsc2FyYWp1IDxocmlkeWFAZ29vZ2xlLmNvbT4NClNpZ25lZC1v
ZmYtYnk6IFQuSi4gTWVyY2llciA8dGptZXJjaWVyQGdvb2dsZS5jb20+DQoNCi0tLQ0KdjMgY2hh
bmdlcw0KUmVtb3ZlIGFuZHJvaWQgZnJvbSB0aXRsZSBwZXIgVG9kZCBLam9zLg0KDQpVc2UgbW9y
ZSBjb21tb24gZHVhbCBhdXRob3IgY29tbWl0IG1lc3NhZ2UgZm9ybWF0IHBlciBKb2huIFN0dWx0
ei4NCg0KSW5jbHVkZSBkZXRhaWxzIG9uIGJlaGF2aW9yIGZvciBhbGwgY29tYmluYXRpb25zIG9m
IGtlcm5lbC91c2Vyc3BhY2UNCnZlcnNpb25zIGluIGNoYW5nZWxvZyAodGhhbmtzIFN1cmVuIEJh
Z2hkYXNhcnlhbikgcGVyIEdyZWcgS3JvYWgtSGFydG1hbi4NCg0KdjIgY2hhbmdlcw0KTW92ZSBk
bWEtYnVmIGNncm91cCBjaGFyZ2UgdHJhbnNmZXIgZnJvbSBhIGRtYV9idWZfb3AgZGVmaW5lZCBi
eSBldmVyeQ0KaGVhcCB0byBhIHNpbmdsZSBkbWEtYnVmIGZ1bmN0aW9uIGZvciBhbGwgaGVhcHMg
cGVyIERhbmllbCBWZXR0ZXIgYW5kDQpDaHJpc3RpYW4gS8O2bmlnLg0KLS0tDQogZHJpdmVycy9h
bmRyb2lkL2JpbmRlci5jICAgICAgICAgICAgfCAyNiArKysrKysrKysrKysrKysrKysrKysrKysr
Kw0KIGluY2x1ZGUvdWFwaS9saW51eC9hbmRyb2lkL2JpbmRlci5oIHwgIDEgKw0KIDIgZmlsZXMg
Y2hhbmdlZCwgMjcgaW5zZXJ0aW9ucygrKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9hbmRyb2lk
L2JpbmRlci5jIGIvZHJpdmVycy9hbmRyb2lkL2JpbmRlci5jDQppbmRleCA4MzUxYzU2Mzg4ODAu
LmY1MGQ4OGRlZDE4OCAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvYW5kcm9pZC9iaW5kZXIuYw0KKysr
IGIvZHJpdmVycy9hbmRyb2lkL2JpbmRlci5jDQpAQCAtNDIsNiArNDIsNyBAQA0KIA0KICNkZWZp
bmUgcHJfZm10KGZtdCkgS0JVSUxEX01PRE5BTUUgIjogIiBmbXQNCiANCisjaW5jbHVkZSA8bGlu
dXgvZG1hLWJ1Zi5oPg0KICNpbmNsdWRlIDxsaW51eC9mZHRhYmxlLmg+DQogI2luY2x1ZGUgPGxp
bnV4L2ZpbGUuaD4NCiAjaW5jbHVkZSA8bGludXgvZnJlZXplci5oPg0KQEAgLTI0ODIsOCArMjQ4
MywxMCBAQCBzdGF0aWMgaW50IGJpbmRlcl90cmFuc2xhdGVfZmRfYXJyYXkoc3RydWN0IGxpc3Rf
aGVhZCAqcGZfaGVhZCwNCiB7DQogCWJpbmRlcl9zaXplX3QgZmRpLCBmZF9idWZfc2l6ZTsNCiAJ
YmluZGVyX3NpemVfdCBmZGFfb2Zmc2V0Ow0KKwlib29sIHRyYW5zZmVyX2dwdV9jaGFyZ2UgPSBm
YWxzZTsNCiAJY29uc3Qgdm9pZCBfX3VzZXIgKnNlbmRlcl91ZmRhX2Jhc2U7DQogCXN0cnVjdCBi
aW5kZXJfcHJvYyAqcHJvYyA9IHRocmVhZC0+cHJvYzsNCisJc3RydWN0IGJpbmRlcl9wcm9jICp0
YXJnZXRfcHJvYyA9IHQtPnRvX3Byb2M7DQogCWludCByZXQ7DQogDQogCWZkX2J1Zl9zaXplID0g
c2l6ZW9mKHUzMikgKiBmZGEtPm51bV9mZHM7DQpAQCAtMjUyMSw4ICsyNTI0LDE1IEBAIHN0YXRp
YyBpbnQgYmluZGVyX3RyYW5zbGF0ZV9mZF9hcnJheShzdHJ1Y3QgbGlzdF9oZWFkICpwZl9oZWFk
LA0KIAlpZiAocmV0KQ0KIAkJcmV0dXJuIHJldDsNCiANCisJaWYgKElTX0VOQUJMRUQoQ09ORklH
X0NHUk9VUF9HUFUpICYmDQorCQlwYXJlbnQtPmZsYWdzICYgQklOREVSX0JVRkZFUl9GTEFHX1NF
TkRFUl9OT19ORUVEKQ0KKwkJdHJhbnNmZXJfZ3B1X2NoYXJnZSA9IHRydWU7DQorDQogCWZvciAo
ZmRpID0gMDsgZmRpIDwgZmRhLT5udW1fZmRzOyBmZGkrKykgew0KIAkJdTMyIGZkOw0KKwkJc3Ry
dWN0IGRtYV9idWYgKmRtYWJ1ZjsNCisJCXN0cnVjdCBncHVjZyAqZ3B1Y2c7DQorDQogCQliaW5k
ZXJfc2l6ZV90IG9mZnNldCA9IGZkYV9vZmZzZXQgKyBmZGkgKiBzaXplb2YoZmQpOw0KIAkJYmlu
ZGVyX3NpemVfdCBzZW5kZXJfdW9mZnNldCA9IGZkaSAqIHNpemVvZihmZCk7DQogDQpAQCAtMjUz
Miw2ICsyNTQyLDIyIEBAIHN0YXRpYyBpbnQgYmluZGVyX3RyYW5zbGF0ZV9mZF9hcnJheShzdHJ1
Y3QgbGlzdF9oZWFkICpwZl9oZWFkLA0KIAkJCQkJCSAgaW5fcmVwbHlfdG8pOw0KIAkJaWYgKHJl
dCkNCiAJCQlyZXR1cm4gcmV0ID4gMCA/IC1FSU5WQUwgOiByZXQ7DQorDQorCQlpZiAoIXRyYW5z
ZmVyX2dwdV9jaGFyZ2UpDQorCQkJY29udGludWU7DQorDQorCQlkbWFidWYgPSBkbWFfYnVmX2dl
dChmZCk7DQorCQlpZiAoSVNfRVJSKGRtYWJ1ZikpDQorCQkJY29udGludWU7DQorDQorCQlncHVj
ZyA9IGdwdWNnX2dldCh0YXJnZXRfcHJvYy0+dHNrKTsNCisJCXJldCA9IGRtYV9idWZfY2hhcmdl
X3RyYW5zZmVyKGRtYWJ1ZiwgZ3B1Y2cpOw0KKwkJaWYgKHJldCkgew0KKwkJCXByX3dhcm4oIiVk
OiVkIFVuYWJsZSB0byB0cmFuc2ZlciBETUEtQlVGIGZkIGNoYXJnZSB0byAlZCIsDQorCQkJCXBy
b2MtPnBpZCwgdGhyZWFkLT5waWQsIHRhcmdldF9wcm9jLT5waWQpOw0KKwkJCWdwdWNnX3B1dChn
cHVjZyk7DQorCQl9DQorCQlkbWFfYnVmX3B1dChkbWFidWYpOw0KIAl9DQogCXJldHVybiAwOw0K
IH0NCmRpZmYgLS1naXQgYS9pbmNsdWRlL3VhcGkvbGludXgvYW5kcm9pZC9iaW5kZXIuaCBiL2lu
Y2x1ZGUvdWFwaS9saW51eC9hbmRyb2lkL2JpbmRlci5oDQppbmRleCAzMjQ2ZjJjNzQ2OTYuLjE2
OWZkNTA2OWExYSAxMDA2NDQNCi0tLSBhL2luY2x1ZGUvdWFwaS9saW51eC9hbmRyb2lkL2JpbmRl
ci5oDQorKysgYi9pbmNsdWRlL3VhcGkvbGludXgvYW5kcm9pZC9iaW5kZXIuaA0KQEAgLTEzNyw2
ICsxMzcsNyBAQCBzdHJ1Y3QgYmluZGVyX2J1ZmZlcl9vYmplY3Qgew0KIA0KIGVudW0gew0KIAlC
SU5ERVJfQlVGRkVSX0ZMQUdfSEFTX1BBUkVOVCA9IDB4MDEsDQorCUJJTkRFUl9CVUZGRVJfRkxB
R19TRU5ERVJfTk9fTkVFRCA9IDB4MDIsDQogfTsNCiANCiAvKiBzdHJ1Y3QgYmluZGVyX2ZkX2Fy
cmF5X29iamVjdCAtIG9iamVjdCBkZXNjcmliaW5nIGFuIGFycmF5IG9mIGZkcyBpbiBhIGJ1ZmZl
cg0KLS0gDQoyLjM1LjEuNjE2LmcwYmRjYmI0NDY0LWdvb2cNCg0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3Qg
LS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4g
ZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
