Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C8276BBACB
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Mar 2023 18:24:51 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 73FF83F49A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Mar 2023 17:24:50 +0000 (UTC)
Received: from mail.marcansoft.com (marcansoft.com [212.63.210.85])
	by lists.linaro.org (Postfix) with ESMTPS id F213D3F0A8
	for <linaro-mm-sig@lists.linaro.org>; Wed,  8 Mar 2023 17:44:51 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=asahilina.net header.s=default header.b=D8uQBUHl;
	spf=pass (lists.linaro.org: domain of lina@asahilina.net designates 212.63.210.85 as permitted sender) smtp.mailfrom=lina@asahilina.net;
	dmarc=pass (policy=quarantine) header.from=asahilina.net
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: lina@asahilina.net)
	by mail.marcansoft.com (Postfix) with ESMTPSA id DAE6041DF4;
	Wed,  8 Mar 2023 17:44:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=asahilina.net;
	s=default; t=1678297490;
	bh=fhXB/EYYX9j8qxFHx1ZRx8caCPXojBAtmHMmCPfk7/c=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=D8uQBUHl406auUb4dgJPw/yDLp3vQCmgE9+0F5HY1bdli22kwGEGbT4SkxZaMNooS
	 ZpLzFCm5pCeALq5rxsxhI4v/XdIR1ZIGHaoDM2on86t0B9wBOopKdlyvAKXzprhS1Q
	 HodEPkB7neoFcykRt8Qd+kTERz10lzWtJSVHUoZlnUMVdhM2VjGNIUyhjs+QJEeUlD
	 82GrtZJ1mTeafPZkk97TBy0XztQZgjtu7wJdGgymG56KQpHZaU3s8kttKkfv2r/3tu
	 fklvJcKvD3EPQlvr9EIXkAT2GCYbGzlBHVw+mNPPPjTXLJMtoNWs2qVp2wEluvsT+a
	 5dBzDRJfxskDQ==
Message-ID: <c82660f4-e2d0-35ca-304a-57d1abcf814d@asahilina.net>
Date: Thu, 9 Mar 2023 02:44:42 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: alyssa@rosenzweig.io, =?UTF-8?Q?Christian_K=c3=b6nig?=
 <christian.koenig@amd.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>,
 Wedson Almeida Filho <wedsonaf@gmail.com>, Boqun Feng
 <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>,
 =?UTF-8?Q?Bj=c3=b6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>,
 Sumit Semwal <sumit.semwal@linaro.org>, Luben Tuikov <luben.tuikov@amd.com>,
 Jarkko Sakkinen <jarkko@kernel.org>,
 Dave Hansen <dave.hansen@linux.intel.com>
References: <0f14c1ae-0c39-106c-9563-7c1c672154c0@asahilina.net>
 <20230307-rust-drm-v1-0-917ff5bc80a8@asahilina.net>
 <20230307-rust-drm-v1-11-917ff5bc80a8@asahilina.net>
 <bbd7c5ee-c2f0-3e19-757d-a9aff1a26d3d@linux.intel.com>
 <585fa052-4eff-940e-b307-2415c315686a@amd.com>
 <3320e497-09c0-6eb6-84c5-bab2e63f28ec@asahilina.net>
 <7b39ef96-3ec5-c492-6e1b-bf065b7c90a2@amd.com>
 <8e93126cfaf47ebad0dc70e038ccc92f@rosenzweig.io>
From: Asahi Lina <lina@asahilina.net>
In-Reply-To: <8e93126cfaf47ebad0dc70e038ccc92f@rosenzweig.io>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: F213D3F0A8
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.96 / 15.00];
	BAYES_HAM(-2.46)[97.54%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[asahilina.net,quarantine];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[asahilina.net:s=default];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_TO(0.00)[rosenzweig.io,amd.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,garyguo.net,protonmail.com,linaro.org];
	ASN(0.00)[asn:30880, ipnet:212.63.192.0/19, country:SE];
	DKIM_TRACE(0.00)[asahilina.net:+];
	ARC_NA(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_ALL(0.00)[]
X-MailFrom: lina@asahilina.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: QRTLLXNCFPKF43ONG4JNWK3H3B5TTRXU
X-Message-ID-Hash: QRTLLXNCFPKF43ONG4JNWK3H3B5TTRXU
X-Mailman-Approved-At: Wed, 15 Mar 2023 17:22:13 +0000
CC: Karol Herbst <kherbst@redhat.com>, Ella Stanforth <ella@iglunix.org>, Faith Ekstrand <faith.ekstrand@collabora.com>, Mary <mary@mary.zone>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-sgx@vger.kernel.org, asahi@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 11/18] drm/scheduler: Clean up jobs when the scheduler is torn down
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QRTLLXNCFPKF43ONG4JNWK3H3B5TTRXU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On 09/03/2023 02.39, alyssa@rosenzweig.io wrote:
>> You can't ask me for a list
>> of pending jobs (the scheduler knows this, it doesn't make any sense to
>> duplicate that outside)
> 
> Silly question: could you add a new exported function to drm_sched to get the list of pending jobs, to be used by the Rust abstraction internally? IDK if that makes any sense.

The drm_sched struct is public, we could just go in there and do it
anyway... but then I need to figure out how to do
`list_for_each_entry_safe` in Rust and this all makes very little sense
when it's clearly the scheduler's job to provide some form of cleanup
function users can use to do it...

I mean, I guess I can do that if Christian is adamantly against
providing a safe C API, but it's clearly not the right solution and I
hope this is not the approach maintainers take with Rust abstractions,
because that's going to make our lives a lot harder for no good reason,
and it also means C users don't get any of the benefits of Rust
abstraction work if the APIs can't be improved at all along with it.

~~ Lina
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
