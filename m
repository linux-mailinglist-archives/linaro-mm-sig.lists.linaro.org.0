Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E1A2A638817
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 25 Nov 2022 12:00:58 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E6DB13EF33
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 25 Nov 2022 11:00:57 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id 32A2F3ED86
	for <linaro-mm-sig@lists.linaro.org>; Fri, 25 Nov 2022 11:00:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=DtzlBBkf;
	spf=pass (lists.linaro.org: domain of javierm@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=javierm@redhat.com;
	dmarc=pass (policy=none) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1669374048;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=H/ZkLtm8A9FTaUIt1krh1NXQg3mdZeQrz9lNHvK9Ra0=;
	b=DtzlBBkf+51d4EnyQoopC36sUkcY/ttW7tFFXAYOpVrUTUmGTDgJ7QB2DU6MjbB9oOB3/C
	G5gGlxcJfvzQBpqCrx6D3Egt7hVix2BuvmA658vZNZpPJdpJYr4uNQNHEpLgTehHY6O+1/
	FdexgqtUYMsE+gcKOvP4KL2d/4NRbZ8=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-581-u_NsSBYQOKyZIedVmkYpEA-1; Fri, 25 Nov 2022 06:00:47 -0500
X-MC-Unique: u_NsSBYQOKyZIedVmkYpEA-1
Received: by mail-wm1-f72.google.com with SMTP id e8-20020a05600c218800b003cf634f5280so1671806wme.8
        for <linaro-mm-sig@lists.linaro.org>; Fri, 25 Nov 2022 03:00:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=H/ZkLtm8A9FTaUIt1krh1NXQg3mdZeQrz9lNHvK9Ra0=;
        b=2f7XMhAx4FbwgYKqvtYJ5g+ywONZA4BGshFtpvQQcZydUXQ200mcGXAoHeJJKG+ri3
         Ku7ojLcTtokNRBbmFwI8xSKtdx4VXXUa0dLzds/SrIy9hvM0QZqeNONhrEUmLXgFAbe8
         f3IqzkgHHnIDGC44HU2fk0AXBAoY8w0RLWU9B4Veua2u0XwrD8KE3a3n9jzRs6usXr4P
         0qxC80DGtL/xeVt49KO2pevNtn2UbN9NyI7jTaxbERyjH8sWOgVemvAxDStfMoIIa6ba
         EBNTLqS8u6pYGVFoH3Ok4Q4A1KrNgpWw7AqA/6JED6wNgUQ1m5xiwyzevTTta5BDhXYD
         sQ/A==
X-Gm-Message-State: ANoB5pki+5BH1tyjfCX/hbmtEXCx5Qg9qDmJnGetBGmNLfmIH1E3UxFx
	bDU66DnXDqbXrlqqIYUIPxBdDH9LiOXMSdSKn+phT2scUXVAw4dnLyKzXSAlZlQENgPfR0cAMeI
	4vV5MHmijizZ9sCUTl0ZJaU0QkzQ=
X-Received: by 2002:adf:e508:0:b0:236:588f:b5d with SMTP id j8-20020adfe508000000b00236588f0b5dmr11244629wrm.255.1669374046415;
        Fri, 25 Nov 2022 03:00:46 -0800 (PST)
X-Google-Smtp-Source: AA0mqf7Xu/NP6mlFBtx0snOLhZERGkaY9p8k3uPMLjkAV/xFHCXfHC5Y76yhHYrvcopCb8lv41h+LQ==
X-Received: by 2002:adf:e508:0:b0:236:588f:b5d with SMTP id j8-20020adfe508000000b00236588f0b5dmr11244612wrm.255.1669374046175;
        Fri, 25 Nov 2022 03:00:46 -0800 (PST)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id p1-20020a1c5441000000b003b4cba4ef71sm8531125wmi.41.2022.11.25.03.00.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Nov 2022 03:00:45 -0800 (PST)
Message-ID: <2762e41f-0508-2e25-b787-7b68d5014a77@redhat.com>
Date: Fri, 25 Nov 2022 12:00:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: Maxime Ripard <maxime@cerno.tech>, Maxime Ripard <mripard@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>
References: <20221123-rpi-kunit-tests-v1-0-051a0bb60a16@cerno.tech>
 <20221123-rpi-kunit-tests-v1-10-051a0bb60a16@cerno.tech>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20221123-rpi-kunit-tests-v1-10-051a0bb60a16@cerno.tech>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Rspamd-Queue-Id: 32A2F3ED86
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	RCVD_IN_DNSWL_HI(-1.00)[92.176.231.205:received,209.85.128.72:received];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,none];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	R_SPF_ALLOW(-0.20)[+ip4:170.10.129.0/24];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[cerno.tech,kernel.org,linux.intel.com,ffwll.ch,gmail.com,suse.de];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:30031, ipnet:170.10.128.0/23, country:US];
	RCVD_IN_DNSWL_NONE(0.00)[170.10.129.124:from];
	DKIM_TRACE(0.00)[redhat.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[170.10.129.124:from];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: QPJY2KAVHKUFOMKSNAU53WVJ6J4G6DZI
X-Message-ID-Hash: QPJY2KAVHKUFOMKSNAU53WVJ6J4G6DZI
X-MailFrom: javierm@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: David Gow <davidgow@google.com>, linaro-mm-sig@lists.linaro.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kselftest@vger.kernel.org, =?UTF-8?Q?Ma=c3=adra_Canal?= <mairacanal@riseup.net>, linux-media@vger.kernel.org, kunit-dev@googlegroups.com, dri-devel@lists.freedesktop.org, Brendan Higgins <brendan.higgins@linux.dev>, linux-kernel@vger.kernel.org, Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 10/24] drm/vc4: kms: Sort the CRTCs by output before assigning them
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QPJY2KAVHKUFOMKSNAU53WVJ6J4G6DZI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On 11/23/22 16:25, Maxime Ripard wrote:
> On the vc4 devices (and later), the blending is done by a single device
> called the HVS. The HVS has three FIFO that can operate in parallel, and
> route their output to 6 CRTCs and 7 encoders on the BCM2711.
> 
> Each of these CRTCs and encoders have some contraints on which FIFO they

constraints.

> can feed from, so we need some code to take all those constraints into
> account and assign FIFOs to CRTCs.
> 
> The problem can be simplified by assigning those FIFOs to CRTCs by
> ascending output index number. We had a comment mentioning it already,
> but we were never actually enforcing it.
> 
> It was working still in most situations because the probe order is
> roughly equivalent, except for the (optional, and fairly rarely used on
> the Pi4) VEC which was last in the probe order sequence, but one of the
> earliest device to assign.
> 
> This resulted in configurations that were rejected by our code but were
> still valid with a different assignment.
> 
> We can fix this by making sure we assign CRTCs to FIFOs by ordering
> them by ascending HVS output index.
> 
> Fixes: 87ebcd42fb7b ("drm/vc4: crtc: Assign output to channel automatically")
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---

[...]

>  
> -	for_each_oldnew_crtc_in_state(state, crtc, old_crtc_state, new_crtc_state, i) {
> -		struct vc4_crtc_state *old_vc4_crtc_state =
> -			to_vc4_crtc_state(old_crtc_state);
> -		struct vc4_crtc_state *new_vc4_crtc_state =
> -			to_vc4_crtc_state(new_crtc_state);
> -		struct vc4_crtc *vc4_crtc = to_vc4_crtc(crtc);
> +	/*
> +	 * The problem we have to solve here is that we have up to 7
> +	 * encoders, connected to up to 6 CRTCs.
> +	 *
> +	 * Those CRTCs, depending on the instance, can be routed to 1, 2
> +	 * or 3 HVS FIFOs, and we need to set the change the muxing

This sentence sounds a little bit off to me. Did you mean:

"we need to set the muxing between" or "we need to change the muxing" ?

I'm not familiar with VC4 but the patch seems to do what the commit message
says, so the changes look good to me.

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
