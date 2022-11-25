Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C1A46388CE
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 25 Nov 2022 12:32:33 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 79EEA3EF19
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 25 Nov 2022 11:32:32 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id 64CB53ED3C
	for <linaro-mm-sig@lists.linaro.org>; Fri, 25 Nov 2022 11:32:23 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b="XLGa/Plx";
	spf=pass (lists.linaro.org: domain of javierm@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=javierm@redhat.com;
	dmarc=pass (policy=none) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1669375943;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=VsGy2+SrkApv7QX3F61FbC2SPRAOik8DhfKcdY40dBI=;
	b=XLGa/PlxlbWm7ybOXLUt+g55fnBvcW9mnXetQpFFiuvO8sgIgL7tIV8TDYushOo+H2ICyB
	/eFxTnp9NLYLKIXKg50PULbMoOhGIC8JEpWGoWFnQd6TXdWfnQdQsJfrrmlDh1sMlCKytc
	QGPsWckLAHUmtQTvvt83OHVjYHzpWoA=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-140-BPOL0MRiPkOP1z2LpWdt-A-1; Fri, 25 Nov 2022 06:32:19 -0500
X-MC-Unique: BPOL0MRiPkOP1z2LpWdt-A-1
Received: by mail-wr1-f71.google.com with SMTP id j20-20020adfb314000000b002366d9f67aaso785432wrd.3
        for <linaro-mm-sig@lists.linaro.org>; Fri, 25 Nov 2022 03:32:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VsGy2+SrkApv7QX3F61FbC2SPRAOik8DhfKcdY40dBI=;
        b=5No5oGF+VZu/JJj9VQ95dxKZNGS3ZvgkQUBe4R7VtksLFD99SAFEdblpAWUK4z47Mt
         ncp/aN/MXVRS17s8i/9SoVvtJAc7HMZx3eM/A1DZ6XgiBDnyPr5fjYN4ywOgdgWMg6ek
         W+6mdKPBMiDM79eTTgUSrP4LSz6uGMkAxpjp54qy7nTzUOzelg6upb9n41H8JqU82IjQ
         7jZCKqSEX5EFn3Z6/Z5Fo/osgxNjmavBlA6BpNk1TkJpMptxpEQGqe2wXSqnptwfN37H
         QPHpUulnLHSxlWRRkszmdJb0qQSXus3lSIFdomoKeivJ+X8Nj/NNPER67ny+9+DtnTLE
         akHQ==
X-Gm-Message-State: ANoB5plUworN5KNYtSoYhWfIuXpJZ40F7+zvMc60UMQP/Rm7muQ1VNCd
	VfXShEOCWIjxGi87Te/x3DLWUXL8Xt3fMmsc9hFitdjd6RnUT0GX6jdwgWgTPzCA11O7/oPAD4R
	Fq/Oo/6oCkasvLDGXHxZ4hBeT8iY=
X-Received: by 2002:a05:600c:246:b0:3cf:760a:fbaf with SMTP id 6-20020a05600c024600b003cf760afbafmr14987941wmj.110.1669375938632;
        Fri, 25 Nov 2022 03:32:18 -0800 (PST)
X-Google-Smtp-Source: AA0mqf5OsbzQLyftwLIWI3nDfrRG5jE1JPupjLhaA0WX3eVwlG57KKybql+K8IcZ8fhxJNc3nhLhqQ==
X-Received: by 2002:a05:600c:246:b0:3cf:760a:fbaf with SMTP id 6-20020a05600c024600b003cf760afbafmr14987919wmj.110.1669375938413;
        Fri, 25 Nov 2022 03:32:18 -0800 (PST)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id x10-20020a05600c21ca00b003a6125562e1sm4484075wmj.46.2022.11.25.03.32.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Nov 2022 03:32:17 -0800 (PST)
Message-ID: <171d89b4-fbd9-8df8-5250-5fabd1973960@redhat.com>
Date: Fri, 25 Nov 2022 12:32:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: Maxime Ripard <maxime@cerno.tech>, Maxime Ripard <mripard@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>
References: <20221123-rpi-kunit-tests-v1-0-051a0bb60a16@cerno.tech>
 <20221123-rpi-kunit-tests-v1-20-051a0bb60a16@cerno.tech>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20221123-rpi-kunit-tests-v1-20-051a0bb60a16@cerno.tech>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Rspamd-Queue-Id: 64CB53ED3C
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	RCVD_IN_DNSWL_HI(-1.00)[209.85.221.71:received,170.10.133.124:from];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,none];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719];
	R_SPF_ALLOW(-0.20)[+ip4:170.10.133.0/24];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[cerno.tech,kernel.org,linux.intel.com,ffwll.ch,gmail.com,suse.de];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:30031, ipnet:170.10.132.0/23, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[us-smtp-delivery-124.mimecast.com:rdns,us-smtp-delivery-124.mimecast.com:helo,cerno.tech:email];
	DKIM_TRACE(0.00)[redhat.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[170.10.133.124:from];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 22VIP64WZXKS6MQSOKEXHG4NSVLJ7QQE
X-Message-ID-Hash: 22VIP64WZXKS6MQSOKEXHG4NSVLJ7QQE
X-MailFrom: javierm@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: David Gow <davidgow@google.com>, linaro-mm-sig@lists.linaro.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kselftest@vger.kernel.org, =?UTF-8?Q?Ma=c3=adra_Canal?= <mairacanal@riseup.net>, linux-media@vger.kernel.org, kunit-dev@googlegroups.com, dri-devel@lists.freedesktop.org, Brendan Higgins <brendan.higgins@linux.dev>, linux-kernel@vger.kernel.org, Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 20/24] drm/vc4: crtc: Provide a CRTC name
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/22VIP64WZXKS6MQSOKEXHG4NSVLJ7QQE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On 11/23/22 16:26, Maxime Ripard wrote:
> It's fairly hard to figure out the instance of the CRTC affected by an
> atomic change using the default name.
> 
> Since we can provide our own to the CRTC initialization functions, let's
> do so to make the debugging sessions easier.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  drivers/gpu/drm/vc4/vc4_crtc.c | 10 +++++++++-
>  drivers/gpu/drm/vc4/vc4_drv.h  |  2 ++
>  drivers/gpu/drm/vc4/vc4_txp.c  |  1 +
>  3 files changed, 12 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/vc4/vc4_crtc.c b/drivers/gpu/drm/vc4/vc4_crtc.c
> index 8bc30ad0904b..59e473059fa2 100644
> --- a/drivers/gpu/drm/vc4/vc4_crtc.c
> +++ b/drivers/gpu/drm/vc4/vc4_crtc.c
> @@ -1118,6 +1118,7 @@ static const struct drm_crtc_helper_funcs vc4_crtc_helper_funcs = {
>  
>  static const struct vc4_pv_data bcm2835_pv0_data = {
>  	.base = {
> +		.name = "pixelvalve-0",

I wonder if would make sense to add the SoC name too, but either way:

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
