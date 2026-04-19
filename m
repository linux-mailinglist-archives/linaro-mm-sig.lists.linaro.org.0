Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wJ7rGUtm5mlmvwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:45:47 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 14200432090
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:45:47 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2724C406ED
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:45:46 +0000 (UTC)
Received: from mail-yx1-f45.google.com (mail-yx1-f45.google.com [74.125.224.45])
	by lists.linaro.org (Postfix) with ESMTPS id E6BDE40164
	for <linaro-mm-sig@lists.linaro.org>; Sun, 19 Apr 2026 13:14:15 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=bitbyteword.org header.s=google header.b=sFWCXVPK;
	dmarc=none;
	spf=pass (lists.linaro.org: domain of vineeth@bitbyteword.org designates 74.125.224.45 as permitted sender) smtp.mailfrom=vineeth@bitbyteword.org;
	arc=pass ("google.com:s=arc-20240605:i=1")
Received: by mail-yx1-f45.google.com with SMTP id 956f58d0204a3-651b0eb2564so2193170d50.3
        for <linaro-mm-sig@lists.linaro.org>; Sun, 19 Apr 2026 06:14:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1776604455; cv=none;
        d=google.com; s=arc-20240605;
        b=faxRhXCkGXaIis/GlWSPME1cRsHiSwOfSII/TJyqB8n2/aviyv6usMSruMb+O6zWcw
         IsqTHW4FZYWXVfDXIr2m7eBBdNAyz8umFCaJiJjryzP4mKCDS1+tk2FMalXlzHXtyxiA
         /Tu0V/515yijBqRNu7WzEeLkbsTEgQWV5eoZA35q2nzJFlw3Q1d0sqH5kPK/ldbHGxLG
         v2qrYlNyLe2x1954P9UJD6hcVPG7A4R4rRc/SRpgV5lTRz6TW463NsSQTkNRfQZHBZYd
         s9omR4Cq3ZZ0kpOlpV8PiLwI4rxor7KzYYfKLL/HapaWzUHW0u6uRz5TUYGx2uzTVlOJ
         IsRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=X+WVMuAIY6fuTgPsvbyDiChtmsWhcTJteNRfYOEl4tw=;
        fh=S2cAjU5oFUjybIOLB6ZpG1RUQ+m7a+Vw0+2ciGM0K+A=;
        b=jZ40rE/llMon7l5G81s1K1vHj2ij8b3FKMkyyk/D4+gfJoHv6QXfNuyfRGhX1bR27s
         8rR94W4EXzMb63BCPeafqXfSw6DQv1y23iK5EGPMZ3M/tAg2HtXk+6VUl8Xf9T8jA9Zj
         d4lAZSyiv8hA3MXeMm5ClvBsW2dh4Dc0LA1tYSyv6492bAsJBzkdILcNDoXDFNv+j70e
         REuDoL5D6pjX74umjEgJMBkhGHro8LVxFcQoCV1SlwyVuXLV/CJeXs1xOkpKRehPROMu
         I1qJcEflMv/GP/fqlYXpPIz7qG7B/aA3M5ILePKw3A/TN1WGeSY5MRSmfDU+nnIsbIKJ
         qWOg==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bitbyteword.org; s=google; t=1776604455; x=1777209255; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X+WVMuAIY6fuTgPsvbyDiChtmsWhcTJteNRfYOEl4tw=;
        b=sFWCXVPK39dNnkn9MKEfjOPhonbjbuZ9a7/vYjhPK8TUOzLwKrgnafaJLF6TYK5V3p
         x8cqgDT5CWX1OlDJY/I1LcBA0pC4bEDUW2scl2Rvxg362nYrWcOxqsu7mZwL0rWGOJz+
         5TXp4xj/x025BHwu24J5VXgLlMyD50xhkJgzeeUZ4CNGYXTVrpan0m+yx1XMn+VppDiH
         RXrPLQYONNSVGt36E7GIcWRFHOMAscSK7TKlp85N9PetzawNe5l/4dxyUDnrMdFVe2zX
         UcZjLhCzlWHgGHLUhfywRvlJ7e7bUhbF1g3lDWJheSu3wDpovDcrJ+DYXjuqMl1AfXsS
         NHRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776604455; x=1777209255;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=X+WVMuAIY6fuTgPsvbyDiChtmsWhcTJteNRfYOEl4tw=;
        b=DIPDU6nFaNMYzUsU/ELKFK3S+pSCRqsHkd3AqC6QhBynKoT17Et+Ph+VdJKZcCIVuH
         S0fdotYUhuX5ZLvptgJNklVyDatZV5mRaKar2Czi327dX7QcePt/TdeMT0KRTmdLPQbP
         QNOIl/AwJOfuHInp/wiDtr9XhDd9yJso54/K4YVmiBqep85vdKv9gBj09ecOdx+iVoZL
         Au4eeNn6FOA7MH2OXB0O0/EjHzWIF1bybmppjJxrczJeTdPw3Yx1V5tGnBW6wNv7YDM/
         7Z6Xh0W1q6xBt9BjE5z4kpKOmKUXI1lwrphOYuufoOXDOytQa33tGJ5RuNYrNMpLQo+W
         grHA==
X-Forwarded-Encrypted: i=1; AFNElJ92521QO2IKJ5P9JDl2eB8SoxFNchf/c9cXP9j+x/yeNT5rYuvv87Vegdk/feJDg7oYHIi38u71SjDrxsVJ@lists.linaro.org
X-Gm-Message-State: AOJu0YyaHEc45h26ELx6unEgkXFttmQ3Ku76qHBSZxVb23amVuGatUmL
	6+VK6eMegAqHuWeh68A7UFmm4M7lSHXR0Yat2DlxUy09mOgztdsp2qhmxEOa2b62yVaH+DUEJoy
	nTcHcwF3o7J7PQa/uC7eqb4Sgm1xU5CAlX+EKsScV3Q==
X-Gm-Gg: AeBDievDeYYmGQx3Z1iiZdaQb6WZOhZFtMGWPg2/yOObKfrm+5Qzjwsga/3JAtuduz3
	iOSRm/NHxPk5K4seQ0b8qPKOyZ/KJq00Y5/9S5+1EtSu0yVxM94xvWYy5e5+OZxmEnguxMaltYE
	4AUAsBiD7zDgjs9K6IZ0bsC4+KymLrsVVZW9S8OYOxink5hp/dgui7bUdFVBqZSj7OysknK/Fon
	+7nUGRraeWkXU/uUsoKHX7yvEwSw9nHSN1jcSN38Ht8xQgpIQRUCEI2S2U25/rnkSw0eNfaWVEX
	FErH0oeX5MFQO3bhoge4daRZSG9N
X-Received: by 2002:a05:690e:4811:b0:651:bcc9:50cd with SMTP id
 956f58d0204a3-653107ccddamr6102177d50.5.1776604455299; Sun, 19 Apr 2026
 06:14:15 -0700 (PDT)
MIME-Version: 1.0
References: <20260323160052.17528-1-vineeth@bitbyteword.org> <20260418190456.631df6f3@fedora>
In-Reply-To: <20260418190456.631df6f3@fedora>
From: Vineeth Remanan Pillai <vineeth@bitbyteword.org>
Date: Sun, 19 Apr 2026 09:14:04 -0400
X-Gm-Features: AQROBzCejbUFLEO14GEr24qqxXnlBQ97NPzS668jjkdcYvI-3kvv1xuemSCQk44
Message-ID: <CAO7JXPh+__EWsW8fsKi4T+w0jdPxZEfCLQno_ukJk2=d2s0WKA@mail.gmail.com>
To: Steven Rostedt <rostedt@goodmis.org>
X-Spamd-Bar: /
X-MailFrom: vineeth@bitbyteword.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: YHFPIESDBDK65L6LMOVJP52J2C24SBSI
X-Message-ID-Hash: YHFPIESDBDK65L6LMOVJP52J2C24SBSI
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:44:55 +0000
CC: Peter Zijlstra <peterz@infradead.org>, Dmitry Ilvokhin <d@ilvokhin.com>, Masami Hiramatsu <mhiramat@kernel.org>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, Ingo Molnar <mingo@redhat.com>, Jens Axboe <axboe@kernel.dk>, io-uring@vger.kernel.org, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>, Xin Long <lucien.xin@gmail.com>, Jon Maloy <jmaloy@redhat.com>, Aaron Conole <aconole@redhat.com>, Eelco Chaudron <echaudro@redhat.com>, Ilya Maximets <i.maximets@ovn.org>, netdev@vger.kernel.org, bpf@vger.kernel.org, linux-sctp@vger.kernel.org, tipc-discussion@lists.sourceforge.net, dev@openvswitch.org, Jiri Pirko <jiri@resnulli.us>, Oded Gabbay <ogabbay@kernel.org>, Koby Elbaz <koby.elbaz@intel.com>, dri-devel@lists.freedesktop.org, "Rafael J. Wysocki" <rafael@
 kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>, "Gautham R. Shenoy" <gautham.shenoy@amd.com>, Huang Rui <ray.huang@amd.com>, Mario Limonciello <mario.limonciello@amd.com>, Len Brown <lenb@kernel.org>, Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>, linux-pm@vger.kernel.org, MyungJoo Ham <myungjoo.ham@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, linaro-mm-sig@lists.linaro.org, Eddie James <eajames@linux.ibm.com>, Andrew Jeffery <andrew@codeconstruct.com.au>, linux-fsi@lists.ozlabs.org, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Alex Deucher <alexander.deucher@amd.com>, Danilo Krummrich <dakr@kernel.org>, Matthew Brost <matthew.brost@intel.com>, Philipp Stanner <phasta@kernel.org>, Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>, amd-gfx@lists.freedesktop.org, Jiri Kosina <jik
 os@kernel.org>, Benjamin Tissoires <bentiss@kernel.org>, linux-input@vger.kernel.org, Wolfram Sang <wsa+renesas@sang-engineering.com>, linux-i2c@vger.kernel.org, Mark Brown <broonie@kernel.org>, Michael Hennerich <michael.hennerich@analog.com>, =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, linux-spi@vger.kernel.org, "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>, "Martin K. Petersen" <martin.petersen@oracle.com>, linux-scsi@vger.kernel.org, Chris Mason <clm@fb.com>, David Sterba <dsterba@suse.com>, linux-btrfs@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>, Andrew Morton <akpm@linux-foundation.org>, SeongJae Park <sj@kernel.org>, linux-mm@kvack.org, Borislav Petkov <bp@alien8.de>, Dave Hansen <dave.hansen@linux.intel.com>, x86@kernel.org, linux-trace-kernel@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 00/19] tracepoint: Avoid double static_branch evaluation at guarded call sites
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YHFPIESDBDK65L6LMOVJP52J2C24SBSI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [4.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DATE_IN_PAST(1.00)[28];
	R_DKIM_REJECT(1.00)[bitbyteword.org:s=google];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	GREYLIST(0.00)[pass,meta];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[bitbyteword.org];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.287];
	RCPT_COUNT_GT_50(0.00)[79];
	FROM_NEQ_ENVFROM(0.00)[vineeth@bitbyteword.org,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[infradead.org,ilvokhin.com,kernel.org,efficios.com,redhat.com,kernel.dk,vger.kernel.org,davemloft.net,google.com,iogearbox.net,gmail.com,ovn.org,lists.sourceforge.net,openvswitch.org,resnulli.us,intel.com,lists.freedesktop.org, kernel.org,linaro.org,amd.com,linux.intel.com,samsung.com,lists.linaro.org,linux.ibm.com,codeconstruct.com.au,lists.ozlabs.org,ffwll.ch,sang-engineering.com,analog.com,hansenpartnership.com,oracle.com,fb.com,suse.com,linutronix.de,linux-foundation.org,kvack.org,alien8.de];
	TAGGED_RCPT(0.00)[linaro-mm-sig,renesas];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DKIM_TRACE(0.00)[bitbyteword.org:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,mail.gmail.com:mid,goodmis.org:email]
X-Rspamd-Queue-Id: 14200432090
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gU2F0LCBBcHIgMTgsIDIwMjYgYXQgNzowNeKAr1BNIFN0ZXZlbiBSb3N0ZWR0IDxyb3N0ZWR0
QGdvb2RtaXMub3JnPiB3cm90ZToNCj4NCj4gT24gTW9uLCAyMyBNYXIgMjAyNiAxMjowMDoxOSAt
MDQwMA0KPiAiVmluZWV0aCBQaWxsYWkgKEdvb2dsZSkiIDx2aW5lZXRoQGJpdGJ5dGV3b3JkLm9y
Zz4gd3JvdGU6DQo+DQo+ID4gICBpZiAodHJhY2VfZm9vX2VuYWJsZWQoKSAmJiBjb25kKQ0KPiA+
ICAgICAgIHRyYWNlX2NhbGxfX2ZvbyhhcmdzKTsgICAvKiBjYWxscyBfX2RvX3RyYWNlX2Zvbygp
IGRpcmVjdGx5ICovDQo+DQo+IEhpIFZpbmVldGgsDQo+DQo+IENvdWxkIHlvdSByZWJhc2UgdGhp
cyBzZXJpZXMgb24gdG9wIG9mIDcuMS1yYzEgd2hlbiBpdCBjb21lcyBvdXQ/DQo+IFNldmVyYWwg
b2YgdGhlc2UgcGF0Y2hlcyB3ZXJlIGFjY2VwdGVkIGFscmVhZHkuIE9idmlvdXNseSBkcm9wIHRo
b3NlLg0KPiBUaGV5IHdlcmUgdGhlIHBhdGNoZXMgdGhhdCBhZGRlZCB0aGUgZmVhdHVyZSwgYW5k
IGFueSB3aGVyZSB0aGUNCj4gbWFpbnRhaW5lciBhY2tlZCB0aGUgcGF0Y2guDQo+DQo+IE5vdyB0
aGF0IHRoZSBmZWF0dXJlIGhhcyBiZWVuIGFjY2VwdGVkLCBpZiB5b3UgcG9zdCB0aGUgcGF0Y2gg
c2VyaWVzDQo+IGFnYWluIGFmdGVyIDcuMS1yYzEgd2l0aCBhbGwgdGhlIHBhdGNoZXMgdGhhdCBo
YXZlbid0IGJlZW4gYWNjZXB0ZWQNCj4geWV0LCB0aGVuIHRoZSBtYWludGFpbmVycyBjYW4gc2lt
cGx5IHRha2UgdGhlbSBkaXJlY3RseS4gQXMgdGhlIGZlYXR1cmUNCj4gaXMgbm93IGFjY2VwdGVk
LCB0aGVyZSdzIG5vIGRlcGVuZGVuY3kgb24gaXQsIGFuZCB0aGV5IGRvbid0IG5lZWQgdG8gZ28N
Cj4gdGhyb3VnaCB0aGUgdHJhY2luZyB0cmVlLg0KPg0KU3VyZSwgd2lsbCBkby4gVGhhbmtzIGZv
ciBtZXJnaW5nIHRoaXMgZmVhdHVyZS4NCg0KVGhhbmtzLA0KVmluZWV0aA0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5n
IGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNl
bmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
