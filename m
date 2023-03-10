Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C0D396BBAF2
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Mar 2023 18:32:47 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BED763F0A0
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Mar 2023 17:32:46 +0000 (UTC)
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
	by lists.linaro.org (Postfix) with ESMTPS id 9D6B93F499
	for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Mar 2023 18:57:39 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=X08bB+yk;
	spf=pass (lists.linaro.org: domain of boqun.feng@gmail.com designates 209.85.160.174 as permitted sender) smtp.mailfrom=boqun.feng@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-qt1-f174.google.com with SMTP id l13so6856806qtv.3
        for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Mar 2023 10:57:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678474659;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:feedback-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iYsCaNsSgngNKZcdLQcf6Ufpk9ToxZLFdwVZ9rpQa4I=;
        b=X08bB+yklbWwlcTtt2aeNgmaxess2TPKnELiAEk9OTqJPHuz+3/M9Tmq+KpCSIfM0f
         jD0APM2OhnjVRgXxux5Jran0ExHQPN0mQlneMTl6sIrkmKBwNPbgnNqDlrZ0e9vmTRda
         vjNSQQJBQJ+r7zirpHMIeDU/udZbkxHbku0star9P0mSAMUORFbrWFRMAJcJzUAcYotm
         Uti2604Hf+UKs07gy9+nPPywgNaEIbCrcDdotdF7kCvsZH9Eapmykh+3okNVcDPNrDdi
         OD9nWY2u/J4phmSp18O6CqUa5+TewrEkVAjwF7LWgvHms4ak00DKbbJpNhxXOO7NCOM/
         XZmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678474659;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:feedback-id:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iYsCaNsSgngNKZcdLQcf6Ufpk9ToxZLFdwVZ9rpQa4I=;
        b=bAJUQ290/OkXBkulItQQId3u8oDRhpSGso0mRxlgxKwKGl5Yj3XGnT49T+Y71QjCXj
         5XKS79Tg0UBKRF/bfDRQTODekhUUZaoEqKIh7M7qFI1DGAA45Ep5rKSCl+7jvAw1zvOg
         fhds7jAhgkliVo2pronMT7tJLq0tONZrgrhQNoyf/RYJl27xQ4Ub0ig0P5PaqPPIEh2u
         7ewXAS2XaOabkI+7hTwdb3s/vZ+KF0PFiE2/fUe6tLPjJrGQZ7kPKBOEk4Vl/kmXhaLR
         V0CQWKpH65bSdt3Hy+2N9ag5mYhR7b+6wNHPTwqXvG8bGgenPeb6QpH2eWLqdJP4jnZM
         q0lw==
X-Gm-Message-State: AO0yUKWga8PeQs0NdqV7HbClzIotGHSWGrbUHQ2Ge6jhL4IkpSE1KT2V
	PJYNKlKGzWESghW1qhzygjI=
X-Google-Smtp-Source: AK7set+4zSWuXwAS3gf17d063Xj+Ph3v0EPqWJGTs3qx7Dqyh0WAYgbNyBItJeOyToWCKILdkt9WAA==
X-Received: by 2002:ac8:5e4a:0:b0:3b8:2ea9:a09c with SMTP id i10-20020ac85e4a000000b003b82ea9a09cmr11028163qtx.1.1678474659251;
        Fri, 10 Mar 2023 10:57:39 -0800 (PST)
Received: from auth1-smtp.messagingengine.com (auth1-smtp.messagingengine.com. [66.111.4.227])
        by smtp.gmail.com with ESMTPSA id a8-20020aed2788000000b003b62e8b77e7sm342021qtd.68.2023.03.10.10.57.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Mar 2023 10:57:38 -0800 (PST)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailauth.nyi.internal (Postfix) with ESMTP id BD05F27C0054;
	Fri, 10 Mar 2023 13:57:37 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute4.internal (MEProxy); Fri, 10 Mar 2023 13:57:37 -0500
X-ME-Sender: <xms:oH0LZKRLdsP7S-ODRUr5NQxPKLRM043tk4HBpFPML5ny56aOMc1WKA>
    <xme:oH0LZPyoebzZatMZAuu6P_73GVuEHtNN69KxZr64O2-UPfZdk1ohaIHA1YNTOmA_r
    KAkwArw5YzolSql6g>
X-ME-Received: <xmr:oH0LZH2zT9VTIey8ILSfvM1iTiewrf9ia19JsONvub11ZyqXtExdx7oEEi8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrvddukedguddujecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpeffhffvvefukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpeeuohhq
    uhhnucfhvghnghcuoegsohhquhhnrdhfvghnghesghhmrghilhdrtghomheqnecuggftrf
    grthhtvghrnhepfeduvddvleeigeeugfevffdvffduieeujeeivdduhfeljeeghfegffev
    fffhkeffnecuffhomhgrihhnpehpthhrrdguvghvnecuvehluhhsthgvrhfuihiivgeptd
    enucfrrghrrghmpehmrghilhhfrhhomhepsghoqhhunhdomhgvshhmthhprghuthhhphgv
    rhhsohhnrghlihhthidqieelvdeghedtieegqddujeejkeehheehvddqsghoqhhunhdrfh
    gvnhhgpeepghhmrghilhdrtghomhesfhhigihmvgdrnhgrmhgv
X-ME-Proxy: <xmx:oH0LZGAmUZAA0WaAkOpaN91r1NTQfHex41rDqaXOgp7XltObtE-y4Q>
    <xmx:oH0LZDhbyzfoZ9B-1L4Zs_Qb4Brv9uR5ds8IbGPyn9TAqabJ4deWLw>
    <xmx:oH0LZCrDEJ4ut9DJmmL9U5wz_K5XqnyQlUZYnc_Ay2xgLVJ4PQ1cMQ>
    <xmx:oX0LZPDMVZoKkaOWLRxjIng7KbgqOLDTOoYJ_0CZLCFD9tpM_5bBfg>
Feedback-ID: iad51458e:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 10 Mar 2023 13:57:36 -0500 (EST)
Date: Fri, 10 Mar 2023 10:56:31 -0800
From: Boqun Feng <boqun.feng@gmail.com>
To: Asahi Lina <lina@asahilina.net>
Message-ID: <ZAt9X8qDUHQ/YnW8@boqun-archlinux>
References: <20230307-rust-drm-v1-0-917ff5bc80a8@asahilina.net>
 <20230307-rust-drm-v1-2-917ff5bc80a8@asahilina.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230307-rust-drm-v1-2-917ff5bc80a8@asahilina.net>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 9D6B93F499
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.10 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.160.174:from];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[28];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,garyguo.net,protonmail.com,linaro.org,amd.com,rosenzweig.io,redhat.com,iglunix.org,collabora.com,mary.zone,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-MailFrom: boqun.feng@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: FC2LI67FR4LUYNBWI7G4IY2VQVYRUX6K
X-Message-ID-Hash: FC2LI67FR4LUYNBWI7G4IY2VQVYRUX6K
X-Mailman-Approved-At: Wed, 15 Mar 2023 17:26:42 +0000
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>, Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>, Wedson Almeida Filho <wedsonaf@gmail.com>, Gary Guo <gary@garyguo.net>, =?iso-8859-1?Q?Bj=F6rn?= Roy Baron <bjorn3_gh@protonmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Luben Tuikov <luben.tuikov@amd.com>, Jarkko Sakkinen <jarkko@kernel.org>, Dave Hansen <dave.hansen@linux.intel.com>, Alyssa Rosenzweig <alyssa@rosenzweig.io>, Karol Herbst <kherbst@redhat.com>, Ella Stanforth <ella@iglunix.org>, Faith Ekstrand <faith.ekstrand@collabora.com>, Mary <mary@mary.zone>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-sgx@vger.kernel.org, asahi@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 02/18] rust: drm: Add Device and Driver abstractions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FC2LI67FR4LUYNBWI7G4IY2VQVYRUX6K/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Mar 07, 2023 at 11:25:27PM +0900, Asahi Lina wrote:
[...]
> +
> +// SAFETY: `Device` only holds a pointer to a C device, which is safe to be used from any thread.
> +unsafe impl<T: drm::drv::Driver> Send for Device<T> {}
> +
> +// SAFETY: `Device` only holds a pointer to a C device, references to which are safe to be used
> +// from any thread.
> +unsafe impl<T: drm::drv::Driver> Sync for Device<T> {}
> +

Here is the mind model I use to check whether a type is `Send` or
`Sync`

*	If an object of a type can be created on one thread and dropped
	on the another thread, then it's `Send`.

*	If multiple threads can call the immutable functions (i.e.
	functions with `&self`) of the same object of a type, then the
	it's `Sync`.

Maybe it's incomplete, but at least I find it useful to determine
whether a type is `Send` or `Sync`: it's not just the struct
representation, the behaviors (functions) of the struct also matter.

If that looks reasonable to you, maybe update the "SAFETY" comments in
the future version? Thanks ;-)

(I know you brought this up in the meeting, sorry I guess I wasn't fully
woken when answering you ;-))

Regards,
Boqun

> +// Make drm::Device work for dev_info!() and friends
> +unsafe impl<T: drm::drv::Driver> device::RawDevice for Device<T> {
> +    fn raw_device(&self) -> *mut bindings::device {
> +        // SAFETY: ptr must be valid per the type invariant
> +        unsafe { (*self.ptr).dev }
> +    }
> +}
[...]
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
