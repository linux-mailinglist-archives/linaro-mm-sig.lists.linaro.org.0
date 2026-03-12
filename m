Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KKCOEotf5mkqvgEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:16:59 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id F246A430E5B
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:16:58 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F38C140513
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:16:57 +0000 (UTC)
Received: from mail-yx1-f44.google.com (mail-yx1-f44.google.com [74.125.224.44])
	by lists.linaro.org (Postfix) with ESMTPS id BAA203F80A
	for <linaro-mm-sig@lists.linaro.org>; Thu, 12 Mar 2026 15:39:18 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=bitbyteword.org header.s=google header.b=J8yD8fTU;
	arc=pass ("google.com:s=arc-20240605:i=1");
	spf=pass (lists.linaro.org: domain of vineeth@bitbyteword.org designates 74.125.224.44 as permitted sender) smtp.mailfrom=vineeth@bitbyteword.org;
	dmarc=none
Received: by mail-yx1-f44.google.com with SMTP id 956f58d0204a3-64937edbc9eso1229188d50.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 12 Mar 2026 08:39:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773329958; cv=none;
        d=google.com; s=arc-20240605;
        b=BTfZsc7Yi6DOa9mu6qgFm7GHm6+xXHk+BdNsFSE4l60OYOmegb/PKdwvpuxu52YG43
         b2rUgDin6oC2q+7eRvqtGC+dtJP8/kMMyYzi1e+J0sKnbU20TTfj+S3mBc1YXHUSaYA6
         EYHPTQl57diV88VwRM62LKpBTV5sfGiyK6e0SlXpLGcYHGS1wZ7TKFBOJfaaS+PJ3JIw
         pEbQINFfECqWRCG9TEIk2mL+8SOp0JF/1E/9jcLMzLEuYdOGiSDo5H718Ulbo84zvN8i
         pwgmMLuFgTVua6Dw7XDsjoU9Xalb3EhN0wzSPyFowoFhyDFxVz/1OWdc9dYa75QkqCOo
         wwlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=xV1lSatIeQOkkUeHEjEALGO2gUG7BopBUXrJE33ZDos=;
        fh=sDtL2+PKln0FKwz0lLOEtwsh6LcCF7foa6sm5eBDiZc=;
        b=dHK3vIlcJn0EcL3VcYWWfWut3x8Zxa3/riqXAyo3mv1Rm8n+K5WGS8dsEa8xWAuagU
         1XP3nglRWkMgp1hJX0tPP8oU+NVIcwv/p+wvQpHc1cYKeGIqg1S7RakpM4Aj/PbEBKWL
         27Qhht/FAUHuJxYJOMW00VleRuugedRxmWK86mYqTTmkQ1aTfDGy/ycmCeacjwA4E1c5
         cYulkxuNI242Xcg1dQ+dr8R7wWRJTH1HtSlOO1d/kUl0qHW2okKycfbFztQOj9Lhjvp1
         gfjF1Cbj55XLw9JGbgJ02BjnitE1ygIuB0g0CEaulbACIGU6ag0XiZptQTo09WZb2GnZ
         HdcA==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bitbyteword.org; s=google; t=1773329958; x=1773934758; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xV1lSatIeQOkkUeHEjEALGO2gUG7BopBUXrJE33ZDos=;
        b=J8yD8fTUXcIlrqDQ4jFNOX3RQ/uoH/mwIijevQIloRuD1fOIkD5JaPosRG3Tm4lm3q
         jJk61/7lGSMcxOSCeQi/rP05PAa+qqMbjs+wvUFKzBKGfAE3T5URpCrqls7DsJ5A3Tti
         a+yFaaq7erFhx+ezsyDSSAmTq3OnT/tQqw6kpTZkuEURecZfIsQYPwf2xps6MsVV4ijq
         ni+wgjYgyOKTUUhoyrcXN0wgptIKt8nV2ODCdrSmy+IZZ3B/7AhkyV4sKJfXxCIejrZ2
         7Ds7ixsHJSzw05MewFbi3v2n+cqjjmYq9/YOvTHIzcgAf4W1TZBoc4jcGVrfPp9wrQXD
         n8vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773329958; x=1773934758;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=xV1lSatIeQOkkUeHEjEALGO2gUG7BopBUXrJE33ZDos=;
        b=aRXKvMjhBvkVSUxC8ZP2y8yyDeF80RNarNPmj6DuLCycmBpeJ4BajqNXhJ0kqqgV0u
         /J8ZH73C/pOESS2hVQBdHIf/lNT3m0j1kv+ryjcYjQ80niP2X2O6f749vVDUzqHequMY
         1u2J204Eo0ofi/SPN+fkZ1WsE75WGCdIdZ1NF96CTzjwlgrm9P2T7bXfxUQ21pAno7Mn
         tE65QkV7jZs6tUZGfK+b0kPeqPbg+/bFTQptgJGWe9OLBQ4xaqNL4fRbQ8tbn0w+uCRQ
         AZQpWQKl9M9BobURJZnUVcRmDbi7VCNMi/n4LzZ3bypANYqxTrhrHTFMpOLRzPBvHfKz
         bhew==
X-Forwarded-Encrypted: i=1; AJvYcCUnmniK+h8s1/3FlpYjnOxqPoOcg6tVppUvbMnxfeI9SBRgp4XSy5UH/UMJNd8ihZGdqXkFrdk5TLp22SJv@lists.linaro.org
X-Gm-Message-State: AOJu0YxghfW9xyPWWRuwdZe/61TPLldvNAQpw6yK4gfPGMoMKoGlUxSC
	haL+F22bgzLbQdOuP3AWIzoVTofp8aFext+X7eoZAe6t44mv7jMoJlA5sgae24aaFCPjqPlSHth
	tuFqMWgXF+4m2GvxcnlFIEpa8QlEfSCz2n58dUqU8nQ==
X-Gm-Gg: ATEYQzx66FQ83CtPh1PAEz0Ut6HWd44ZuhZtoJz7dLNhHe2+MVAgCHMMaRm9ggDidbg
	18QfHsYZrBgqRAaXN9uJBN5vak55pp0/eiijhltyMnlveB5B0aviNFloOq/tlLPlR9/qDi6kvYv
	/3FyIHBE89xpykqva8ttYxXUUlgcLcsV+zCNDhrZUy4+FGXjHUh711zTWCTrR4EwTS/A3rUCCE/
	ZwyBDnnsGae23YQ9c72PZK4Iy3+tNyujhD003mKXlYi10qXCSSwJcpJQpH/eEb6zEoUbnzlGZcj
	EYrkcGzViyKEsJ8riA==
X-Received: by 2002:a53:bb8d:0:b0:64d:5742:5ab0 with SMTP id
 956f58d0204a3-64d6577eb37mr4463263d50.43.1773329958142; Thu, 12 Mar 2026
 08:39:18 -0700 (PDT)
MIME-Version: 1.0
References: <20260312150523.2054552-1-vineeth@bitbyteword.org>
 <20260312150523.2054552-2-vineeth@bitbyteword.org> <20260312111255.7925b4e2@gandalf.local.home>
In-Reply-To: <20260312111255.7925b4e2@gandalf.local.home>
From: Vineeth Remanan Pillai <vineeth@bitbyteword.org>
Date: Thu, 12 Mar 2026 11:39:06 -0400
X-Gm-Features: AaiRm53MQsKCFNMcydaZ5MLANW9ImopAkQThe-DUzJ0WQT8Ah4MCG48E4vTQfog
Message-ID: <CAO7JXPhg-Etspj9YahZrq8cmZ2K6AGWDrMnHO+oD96P_SmOLBw@mail.gmail.com>
To: Steven Rostedt <rostedt@goodmis.org>
X-Spamd-Bar: ----
X-MailFrom: vineeth@bitbyteword.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: BXYSQGD5MPSFZZAU2ZHEVW3DFYWQQ5X2
X-Message-ID-Hash: BXYSQGD5MPSFZZAU2ZHEVW3DFYWQQ5X2
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:16:03 +0000
CC: Peter Zijlstra <peterz@infradead.org>, Dmitry Ilvokhin <d@ilvokhin.com>, Masami Hiramatsu <mhiramat@kernel.org>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, Ingo Molnar <mingo@redhat.com>, Jens Axboe <axboe@kernel.dk>, io-uring@vger.kernel.org, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>, Xin Long <lucien.xin@gmail.com>, Jon Maloy <jmaloy@redhat.com>, Aaron Conole <aconole@redhat.com>, Eelco Chaudron <echaudro@redhat.com>, Ilya Maximets <i.maximets@ovn.org>, netdev@vger.kernel.org, bpf@vger.kernel.org, linux-sctp@vger.kernel.org, tipc-discussion@lists.sourceforge.net, dev@openvswitch.org, Oded Gabbay <ogabbay@kernel.org>, Koby Elbaz <koby.elbaz@intel.com>, dri-devel@lists.freedesktop.org, "Rafael J. Wysocki" <rafael@kernel.org>, Viresh Kumar <vire
 sh.kumar@linaro.org>, "Gautham R. Shenoy" <gautham.shenoy@amd.com>, Huang Rui <ray.huang@amd.com>, Mario Limonciello <mario.limonciello@amd.com>, Len Brown <lenb@kernel.org>, Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>, linux-pm@vger.kernel.org, MyungJoo Ham <myungjoo.ham@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, linaro-mm-sig@lists.linaro.org, Eddie James <eajames@linux.ibm.com>, Andrew Jeffery <andrew@codeconstruct.com.au>, linux-fsi@lists.ozlabs.org, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Alex Deucher <alexander.deucher@amd.com>, Danilo Krummrich <dakr@kernel.org>, Matthew Brost <matthew.brost@intel.com>, Philipp Stanner <phasta@kernel.org>, Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>, amd-gfx@lists.freedesktop.org, Jiri Kosina <jikos@kernel.org>, Benjamin Tissoi
 res <bentiss@kernel.org>, linux-input@vger.kernel.org, Wolfram Sang <wsa+renesas@sang-engineering.com>, linux-i2c@vger.kernel.org, Mark Brown <broonie@kernel.org>, Michael Hennerich <michael.hennerich@analog.com>, =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, linux-spi@vger.kernel.org, "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>, "Martin K. Petersen" <martin.petersen@oracle.com>, linux-scsi@vger.kernel.org, Chris Mason <clm@fb.com>, David Sterba <dsterba@suse.com>, linux-btrfs@vger.kernel.org, linux-trace-kernel@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 01/15] tracepoint: Add trace_invoke_##name() API
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BXYSQGD5MPSFZZAU2ZHEVW3DFYWQQ5X2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DATE_IN_PAST(1.00)[937];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[bitbyteword.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,renesas];
	RCPT_COUNT_GT_50(0.00)[71];
	FROM_NEQ_ENVFROM(0.00)[vineeth@bitbyteword.org,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[infradead.org,ilvokhin.com,kernel.org,efficios.com,redhat.com,kernel.dk,vger.kernel.org,davemloft.net,google.com,iogearbox.net,gmail.com,ovn.org,lists.sourceforge.net,openvswitch.org,intel.com,lists.freedesktop.org,linaro.org,amd.com,linux.intel.com,samsung.com,lists.linaro.org,linux.ibm.com,codeconstruct.com.au,lists.ozlabs.org,ffwll.ch,sang-engineering.com,analog.com,hansenpartnership.com,oracle.com,fb.com,suse.com];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	NEURAL_SPAM(0.00)[0.989];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[goodmis.org:email,linaro.org:email,mail.gmail.com:mid,infradead.org:email,bitbyteword.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: F246A430E5B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVGh1LCBNYXIgMTIsIDIwMjYgYXQgMTE6MTPigK9BTSBTdGV2ZW4gUm9zdGVkdCA8cm9zdGVk
dEBnb29kbWlzLm9yZz4gd3JvdGU6DQo+DQo+IE9uIFRodSwgMTIgTWFyIDIwMjYgMTE6MDQ6NTYg
LTA0MDANCj4gIlZpbmVldGggUGlsbGFpIChHb29nbGUpIiA8dmluZWV0aEBiaXRieXRld29yZC5v
cmc+IHdyb3RlOg0KPg0KPiA+IEFkZCB0cmFjZV9pbnZva2VfIyNuYW1lKCkgYXMgYSBjb21wYW5p
b24gdG8gdHJhY2VfIyNuYW1lKCkuICBXaGVuIGENCj4gPiBjYWxsZXIgYWxyZWFkeSBndWFyZHMg
YSB0cmFjZXBvaW50IHdpdGggYW4gZXhwbGljaXQgZW5hYmxlZCBjaGVjazoNCj4gPg0KPiA+ICAg
aWYgKHRyYWNlX2Zvb19lbmFibGVkKCkgJiYgY29uZCkNCj4gPiAgICAgICB0cmFjZV9mb28oYXJn
cyk7DQo+ID4NCj4gPiB0cmFjZV9mb28oKSBpbnRlcm5hbGx5IHJlcGVhdHMgdGhlIHN0YXRpY19i
cmFuY2hfdW5saWtlbHkoKSB0ZXN0LCB3aGljaA0KPiA+IHRoZSBjb21waWxlciBjYW5ub3QgZm9s
ZCBzaW5jZSBzdGF0aWMgYnJhbmNoZXMgYXJlIHBhdGNoZWQgYmluYXJ5DQo+ID4gaW5zdHJ1Y3Rp
b25zLiAgVGhpcyByZXN1bHRzIGluIHR3byBzdGF0aWMtYnJhbmNoIGV2YWx1YXRpb25zIGZvciBl
dmVyeQ0KPiA+IGd1YXJkZWQgY2FsbCBzaXRlLg0KPiA+DQo+ID4gdHJhY2VfaW52b2tlXyMjbmFt
ZSgpIGNhbGxzIF9fZG9fdHJhY2VfIyNuYW1lKCkgZGlyZWN0bHksIHNraXBwaW5nIHRoZQ0KPiA+
IHJlZHVuZGFudCBzdGF0aWMtYnJhbmNoIHJlLWNoZWNrLiAgVGhpcyBhdm9pZHMgbGVha2luZyB0
aGUgaW50ZXJuYWwNCj4gPiBfX2RvX3RyYWNlXyMjbmFtZSgpIHN5bWJvbCBpbnRvIGNhbGwgc2l0
ZXMgd2hpbGUgc3RpbGwgZWxpbWluYXRpbmcgdGhlDQo+ID4gZG91YmxlIGV2YWx1YXRpb246DQo+
ID4NCj4gPiAgIGlmICh0cmFjZV9mb29fZW5hYmxlZCgpICYmIGNvbmQpDQo+ID4gICAgICAgdHJh
Y2VfaW52b2tlX2ZvbyhhcmdzKTsgICAvKiBjYWxscyBfX2RvX3RyYWNlX2ZvbygpIGRpcmVjdGx5
ICovDQo+ID4NCj4gPiBUaHJlZSBsb2NhdGlvbnMgYXJlIHVwZGF0ZWQ6DQo+ID4gLSBfX0RFQ0xB
UkVfVFJBQ0U6IGludm9rZSBmb3JtIG9taXRzIHN0YXRpY19icmFuY2hfdW5saWtlbHksIHJldGFp
bnMNCj4gPiAgIHRoZSBMT0NLREVQIFJDVS13YXRjaGluZyBhc3NlcnRpb24uDQo+ID4gLSBfX0RF
Q0xBUkVfVFJBQ0VfU1lTQ0FMTDogc2FtZSwgcGx1cyByZXRhaW5zIG1pZ2h0X2ZhdWx0KCkuDQo+
ID4gLSAhVFJBQ0VQT0lOVFNfRU5BQkxFRCBzdHViOiBlbXB0eSBuby1vcCBzbyBjYWxsZXJzIGNv
bXBpbGUgY2xlYW5seQ0KPiA+ICAgd2hlbiB0cmFjZXBvaW50cyBhcmUgY29tcGlsZWQgb3V0Lg0K
PiA+DQo+ID4gU3VnZ2VzdGVkLWJ5OiBTdGV2ZW4gUm9zdGVkdCA8cm9zdGVkdEBnb29kbWlzLm9y
Zz4NCj4gPiBTdWdnZXN0ZWQtYnk6IFBldGVyIFppamxzdHJhIDxwZXRlcnpAaW5mcmFkZWFkLm9y
Zz4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBWaW5lZXRoIFBpbGxhaSAoR29vZ2xlKSA8dmluZWV0aEBi
aXRieXRld29yZC5vcmc+DQo+ID4gQXNzaXN0ZWQtYnk6IENsYXVkZTpjbGF1ZGUtc29ubmV0LTQt
Ng0KPg0KPiBJJ20gZ3Vlc3NpbmcgQ2xhdWRlIGhlbHBlZCB3aXRoIHRoZSBvdGhlciBwYXRjaGVz
LiBEaWQgaXQgcmVhbGx5IGhlbHAgd2l0aCB0aGlzIG9uZT8NCj4NCg0KQ2xhdWRlIHdyb3RlIGFu
ZCBidWlsZCB0ZXN0ZWQgdGhlIHdob2xlIHNlcmllcyBiYXNlZCBvbiBteSBndWlkYW5jZQ0KYW5k
IHByb21wdCA6LSkuIEkgdmVyaWZpZWQgdGhlIHNlcmllcyBiZWZvcmUgc2VuZGluZyBpdCBvdXQs
IGJ1dA0KY2xhdWRlIGRpZCB0aGUgaW5pdGlhbCB3b3JrLg0KDQpUaGFua3MsDQpWaW5lZXRoDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5z
dWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFy
by5vcmcK
