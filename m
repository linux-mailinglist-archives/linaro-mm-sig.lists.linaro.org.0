Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AB5B63884E
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 25 Nov 2022 12:11:34 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2B0D93EF19
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 25 Nov 2022 11:11:33 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id 8EB633EF09
	for <linaro-mm-sig@lists.linaro.org>; Fri, 25 Nov 2022 11:11:24 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b="elGz/XR+";
	spf=pass (lists.linaro.org: domain of javierm@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=javierm@redhat.com;
	dmarc=pass (policy=none) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1669374684;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=bXK7NEAftcHsfPhR8xLmiSPyb+Ng0LBgXVA+cCW5sV8=;
	b=elGz/XR+clak2f43PZlubXrFplPW7ONrwBFicP6O3wIa1QPJLOtrjFz1ewe7vvjgRCVLNO
	dI1UPHmVJ3vzydBGaGQDljhjH9hDVJIJX4JJEQB8sn/K2Sn5Ld5fzOWKbM/urG8lGDnVcl
	PvPI332VaBSR11W3mhFQ7ntmB9fb93I=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-315-T-exnnbXP3i8Qu5bkHuMvw-1; Fri, 25 Nov 2022 06:11:23 -0500
X-MC-Unique: T-exnnbXP3i8Qu5bkHuMvw-1
Received: by mail-wr1-f72.google.com with SMTP id r23-20020adfa157000000b00241bcae980cso778755wrr.7
        for <linaro-mm-sig@lists.linaro.org>; Fri, 25 Nov 2022 03:11:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bXK7NEAftcHsfPhR8xLmiSPyb+Ng0LBgXVA+cCW5sV8=;
        b=I3fH5vAvHuY1k3SdeT+ETv8zZkJ6q8E4OM7R1hRORyF4Q2Ri4fzz7iFJBb1WaACAgA
         TNR0QO7AnhomU45d6Bbczv9KSC4CPpmn7S0WBeae+jNux4kZiZNGdztDJ9WcDBfTEoPv
         v33n3bIsvzLyg/kj5D+zlMpAp8OphnMtXZEYr9cp+K4OfON89sCakolyoST+MLq8Wn6F
         WlpgAg/BVlHYRAktAW2CRsaigg0wdJjytCoPklj2GbrhiZuXGMFRyQ2E7chLCElDuBgl
         2bXRkGM0uP2klMRPYQX+kNHhAUrX+Gre9lXuhbNOs5KRNOlaK//Gi85SwdXJOdCFEaYY
         08WA==
X-Gm-Message-State: ANoB5pk8PxeiV2H1imnjeP5C6Wr9nUB1eTBdq00nCZ8HfQOmM/srYmfE
	0ix5OIBQmBsVWBXMClL05nwx0wvHhgzBG/rnA72TeWY7Vllbhw+i63e8wPSETCZ7a1c6zQLh2TG
	prdnQkLCslEiNRtIVuwGejAYj42g=
X-Received: by 2002:adf:bc12:0:b0:241:bc6a:ceb with SMTP id s18-20020adfbc12000000b00241bc6a0cebmr22077604wrg.514.1669374681933;
        Fri, 25 Nov 2022 03:11:21 -0800 (PST)
X-Google-Smtp-Source: AA0mqf50vACH/nxqsgQ+LdWr/oW1K7P9EvuBwdf6WTZcR7NJizA5OCGwk+5+gUp1U3sa0s25anlUtg==
X-Received: by 2002:adf:bc12:0:b0:241:bc6a:ceb with SMTP id s18-20020adfbc12000000b00241bc6a0cebmr22077572wrg.514.1669374681761;
        Fri, 25 Nov 2022 03:11:21 -0800 (PST)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id v15-20020a05600c444f00b003a1980d55c4sm9529366wmn.47.2022.11.25.03.11.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Nov 2022 03:11:21 -0800 (PST)
Message-ID: <df32e940-7517-e98d-a48c-1942bfa89289@redhat.com>
Date: Fri, 25 Nov 2022 12:11:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: Maxime Ripard <maxime@cerno.tech>, Maxime Ripard <mripard@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>
References: <20221123-rpi-kunit-tests-v1-0-051a0bb60a16@cerno.tech>
 <20221123-rpi-kunit-tests-v1-15-051a0bb60a16@cerno.tech>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20221123-rpi-kunit-tests-v1-15-051a0bb60a16@cerno.tech>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Rspamd-Queue-Id: 8EB633EF09
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	RCVD_IN_DNSWL_HI(-1.50)[92.176.231.205:received,170.10.129.124:from,209.85.221.72:received];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[cerno.tech:email,us-smtp-delivery-124.mimecast.com:rdns,us-smtp-delivery-124.mimecast.com:helo];
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
Message-ID-Hash: 24JRPQUCX3BPBW3AP2KXVMVO7A3L7YPN
X-Message-ID-Hash: 24JRPQUCX3BPBW3AP2KXVMVO7A3L7YPN
X-MailFrom: javierm@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: David Gow <davidgow@google.com>, linaro-mm-sig@lists.linaro.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kselftest@vger.kernel.org, =?UTF-8?Q?Ma=c3=adra_Canal?= <mairacanal@riseup.net>, linux-media@vger.kernel.org, kunit-dev@googlegroups.com, dri-devel@lists.freedesktop.org, Brendan Higgins <brendan.higgins@linux.dev>, linux-kernel@vger.kernel.org, Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 15/24] drm/vc4: Add TXP encoder type
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/24JRPQUCX3BPBW3AP2KXVMVO7A3L7YPN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On 11/23/22 16:25, Maxime Ripard wrote:
> The TXP is integrated as a separate CRTC/Encoder/Connector combo, but
> for some reason doesn't rely on the vc4_encoder type and it's associated
> type.
> 
> Let's create a type to make it consistent with the other encoders.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
